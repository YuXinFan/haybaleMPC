fn main() {
    // work for library wsl
    println!(r"cargo:rustc-link-search=/home/fanyx/mine/boolector/build/lib"); // for cargo build
    //println!(r"cargo:-L static=Polly -L static=PollyISL");
    //export LD_LIBRARY_PATH=/home/fanyx/apps/boolector/build/lib:$LD_LIBRARY_PATH
    // cargo test --package haybaleMPC --test mpc-array -- array_ptr_parameter --exact --nocapture

    //println!(r"cargo:rustc-link-search=/Users/fanyx/apps/boolector/build/lib");
    //export LD_LIBRARY_PATH=/Users/fanyx/apps/boolector/build/lib:$LD_LIBRARY_PATH
}