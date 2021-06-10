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
    let modname = "tests/newfiles/declassified.bc";
    Project::from_bc_path(modname)
        .unwrap_or_else(|e| panic!("Failed to parse module {:?}: {}", modname, e))
}

#[test]
fn declassified_max() {
    let funcname = "Max";
    init_logging();
    let proj = get_project();
    let vecparams = vec!(ParameterVal::Unconstrained, ParameterVal::Unconstrained, ParameterVal::Unconstrained);
    let vecsymbols = vec!(String::from("x"), String::from("y"), String::from("z"));
    let rtype = ReturnType{
        isptr: false,
        base: String::from("int"),
        bits: 32,
        len: 1
    };
    let args = verify_declassify_leakages_of_func(
        funcname, 
        &proj, 
        Config::default(),
        Some(vecparams),
        Some(vecsymbols),
        None,
        100 ,
        rtype,  );
    match args  {
        PossibleSolutions::Exactly(hs) => {
            println!("Exactly: {:?}", hs);
        },
        PossibleSolutions::AtLeast(hs) => {
            println!("AtLeast: {:?}", hs);
        }
    }
}


#[test]
fn declassified_max_leak() {
    let funcname = "MaxLeak";
    init_logging();
    let proj = get_project();
    let vecparams = vec!(ParameterVal::Unconstrained, ParameterVal::Unconstrained, ParameterVal::Unconstrained);
    let vecsymbols = vec!(String::from("x"), String::from("y"), String::from("z"));
    let rtype = ReturnType{
        isptr: false,
        base: String::from("int"),
        bits: 32,
        len: 1
    };
    let args = verify_declassify_leakages_of_func(
        funcname, 
        &proj, 
        Config::default(),
        Some(vecparams),
        Some(vecsymbols),
        None,
        100,
        rtype    );
    match args  {
        PossibleSolutions::Exactly(hs) => {
            println!("Exactly: {:?}", hs);
        },
        PossibleSolutions::AtLeast(hs) => {
            println!("AtLeast: {:?}", hs);
        }
    }
}
// #[test]
// fn declassified_psi() {
//     let funcname = "Intersection";
//     init_logging();
//     let proj = get_project();
//     let vecparams = vec!(ParameterVal::PointerToAllocated(10), ParameterVal::ExactValue(10), ParameterVal::PointerToAllocated(10), ParameterVal::ExactValue(10));
//     let vecsymbols = vec!(String::from("a"), String::from("lena"), String::from("b"), String::from("lenbc"));
//     let mut conf : Config<backend::DefaultBackend> = Config::default();
//     conf.loop_bound = 1000;
//     let args = verify_declassify_leakages_of_func(
//         funcname, 
//         &proj, 
//         conf,
//         Some(vecparams),
//         Some(vecsymbols),
//         None,
//         100    );
//     match args  {
//         PossibleSolutions::Exactly(hs) => {
//             println!("Exactly: {:?}", hs);
//         },
//         PossibleSolutions::AtLeast(hs) => {
//             println!("AtLeast: {:?}", hs);
//         }
//     }
// }