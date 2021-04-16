use haybale::solver_utils::PossibleSolutions;
use haybale::*;

fn init_logging() {
    // capture log messages with test harness
    let _ = env_logger::builder().is_test(true).try_init();
}

fn get_project() -> Project {
    let modname = "tests/bcfiles/memory.bc";
    Project::from_bc_path(modname)
        .unwrap_or_else(|e| panic!("Failed to parse module {:?}: {}", modname, e))
}

#[test]
fn array_ptr_parameter() {
    let funcname = "no_args_nozero";
    init_logging();
    let proj = get_project();
    let args = find_zero_of_func(funcname, &proj, Config::default(), None)
        .unwrap_or_else(|r| panic!("{}", r));
    assert_eq!(args, None);
}

#[test]
fn array_element_symbol() {
    let funcname = "";
    init_logging();
    let proj = get_project();
}
