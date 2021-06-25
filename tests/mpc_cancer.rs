use haybaleMPC::backend::DefaultBackend;
use haybaleMPC::verify_declassify_leakages_of_func;
use haybaleMPC::Project;
use haybaleMPC::ParameterVal;
use haybaleMPC::*;
use haybaleMPC::solver_utils::PossibleSolutions;
fn init_logging() {
    // capture log messages with test harness
    let _ = env_logger::builder().is_test(true).try_init();
}

fn get_project() -> Project {
    let modname = "tests/newfiles/cancer.bc";
    Project::from_bc_path(modname)
        .unwrap_or_else(|e| panic!("Failed to parse module {:?}: {}", modname, e))
}

#[test] 
fn declassified_cancer() {
    let funcname = "cancer";
    init_logging();
    let proj = get_project();
    let vecparams = vec!(ParameterVal::Unconstrained, 
        ParameterVal::Unconstrained,
        ParameterVal::Unconstrained,
        ParameterVal::Unconstrained,
        ParameterVal::Unconstrained,
        ParameterVal::Unconstrained);
    //let vecparams = vec!(ParameterVal::Unconstrained, ParameterVal::Unconstrained, ParameterVal::Unconstrained);
    let vecsymbols = vec!(String::from("A"), String::from("B"), String::from("C"), String::from("D"), String::from("E"), String::from("F"));
    let mut config: Config<backend::DefaultBackend> = Config::default();
    config.loop_bound = 1000;  
    let rtype = ReturnType{
        isptr: false,
        base: String::from("bool"),
        bits: 1,
        len: 1
    };
    let args = verify_declassify_leakages_of_func(
        funcname, 
        &proj,  
        config,
        Some(vecparams),
        Some(vecsymbols),
        None,
        100,
        rtype    );
    match args  { 
        PossibleSolutions::Exactly(hs) => {
            println!("Exactly: {:?}", hs);
            println!("Exact {} different outputs", hs.len());
        },
        PossibleSolutions::AtLeast(hs) => {
            println!("AtLeast: {:?}", hs);
            println!("size: {}", hs.len());
        }
    }
}



