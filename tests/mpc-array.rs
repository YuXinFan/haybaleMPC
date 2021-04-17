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
    let modname = "tests/newfiles/array.bc";
    Project::from_bc_path(modname)
        .unwrap_or_else(|e| panic!("Failed to parse module {:?}: {}", modname, e))
}

#[test]
fn array_ptr_parameter() {
    let funcname = "ArrayElementExtract";
    init_logging();
    let proj = get_project();
    let vecparams = vec!(ParameterVal::PointerToAllocated(10), ParameterVal::ExactValue(10));
    let vecsymbols = vec!(String::from("x"), String::from("n"));
    let args = verify_declassify_leakages_of_func(
        funcname, 
        &proj, 
        Config::default(),
        Some(vecparams),
        Some(vecsymbols),
        None,
        100    );
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
fn array_element_symbol() {
    let funcname = "";
    init_logging();
    let proj = get_project();
}
