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
    let modname = "tests/newfiles/gale_shapley.bc";
    Project::from_bc_path(modname)
        .unwrap_or_else(|e| panic!("Failed to parse module {:?}: {}", modname, e))
}

#[test] 
fn declassified_stable_matching() {
    let funcname = "ogale_shapley_textbook_revealed";
    init_logging();
    let proj = get_project();
    // in bytes
    let vecparams = vec!(ParameterVal::PointerToAllocated(5*4),
        ParameterVal::PointerToAllocated(5*5*4), 
        ParameterVal::PointerToAllocated(5*5*4),
        ParameterVal::ExactValue(5));
    let vecsymbols = vec!(String::from("Output"), String::from("mPref"), String::from("wPref"), String::from("n"));
    let mut config: Config<backend::DefaultBackend> = Config::default();
    config.loop_bound = 1000;  
    let rtype = ReturnType{
        isptr: true,
        base: String::from("uint"),
        bits: 32,
        len: 5
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



