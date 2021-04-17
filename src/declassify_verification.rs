use crate::HashSet;
use crate::ReturnValue;
use crate::PossibleSolutions;
use crate::ExecutionManager;
use crate::ParameterVal;
use crate::DefaultBackend;
use crate::Config;
use crate::symex_function;
use crate::symex_function2;
use crate::Project;
use llvm_ir::*;


// fn init_log() {
//     use chrono::Local;
//     use std::io::Write;

//     let env = env_logger::Env::default().filter_or(env_logger::DEFAULT_FILTER_ENV, "trace");
//     env_logger::Builder::from_env(env)
//         .format(|buf, record| {
//             writeln!(
//                 buf,
//                 "{} {} [{}] {}",
//                 Local::now().format("%Y-%m-%d %H:%M:%S"),
//                 record.level(),
//                 record.module_path().unwrap_or("<unnamed>"),
//                 &record.args()
//             )
//         })
//         .init();

//     info!("env_logger initialized.");
// }


pub fn verify_declassify_leakages_of_func<'p>(
    funcname: &str,
    project: &'p Project,
    config: Config<'p, DefaultBackend>,
    params: Option<Vec<ParameterVal>>,
    symbols: Option<Vec<String>>,
    thrown_size: Option<u32>,
    n: usize,
) -> PossibleSolutions<String> {
    //init_log();
    let mut em: ExecutionManager<DefaultBackend> =
    symex_function2(funcname, project, config, params, symbols).unwrap(); // EM

    let return_width = match em.func().return_type.as_ref() {
        Type::VoidType => {
            0
        },
        ty => {
            let width = project
                .size_in_bits(&ty)
                .expect("Function return type shouldn't be an opaque struct type");
            assert_ne!(width, 0, "Function return type has width 0 bits but isn't void type"); // void type was handled above
            width
        },
    };

    // get function having type llvm_ir structure
    let (func, _) = project
        .get_func_by_name(funcname)
        .expect("Failed to find function");

    // create empty result 
    let mut possibol_expr = HashSet::<String>::new();
    let mut have_throw = false; // is there at least one `ReturnValue::Throw` in the `candidate_values`

    //debug!("Processing symbolic execution analysis ...");
    while let Some(bvretval) = em.next() {
        match bvretval {
            Err(e) => panic!("{}", em.state().full_error_message_with_context(e)),
            Ok(ReturnValue::ReturnVoid) => {
                possibol_expr.insert(String::from("Void"));
                if possibol_expr.len() > n {
                    break;
                }
            },
            Ok(ReturnValue::Abort) => {
                possibol_expr.insert(String::from("Abort"));
                if possibol_expr.len() > n {
                    break;
                }
            },
            Ok(ReturnValue::Return(bvretval)) => {
                assert_eq!(bvretval.get_width(), return_width);
                // rule out all the returned values we already have - we're interested in new values
                let new_symbol = bvretval.get_symbol().unwrap_or("MPCunknow");
                if let Some(_) = possibol_expr.get(new_symbol) {
                    possibol_expr.insert(String::from(new_symbol));
                }
            },
            Ok(ReturnValue::Throw(bvptr)) => {
                match thrown_size {
                    None => {
                        if !have_throw {
                            possibol_expr.insert(String::from( format!("Throw at {}", bvptr.as_u64().unwrap() )));
                            have_throw = true;
                            if possibol_expr.len() > n {
                                break;
                            }
                        }
                    },
                    Some(thrown_size) => {
                        //let thrown_value = state.read(&bvptr, thrown_size).unwrap();
                    },
                }
            },
        }
    }
    if possibol_expr.len() > n {
        //possibol_expr
        PossibleSolutions::AtLeast(possibol_expr)
    } else {
        //possibol_expr
        PossibleSolutions::Exactly(possibol_expr)
    }
}

pub fn symex_with_declassify_and_ret(){
    
}

pub fn symex_with_declassify(){

}
