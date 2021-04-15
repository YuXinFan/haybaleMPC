fn main() {
    // work for library wsl
    println!(r"cargo:rustc-link-search=/home/fanyx/apps/boolector/build/lib"); // for cargo build
    //export LD_LIBRARY_PATH=/home/fanyx/apps/boolector/build/lib:$LD_LIBRARY_PATH

    //println!(r"cargo:rustc-link-search=/Users/fanyx/apps/boolector/build/lib");
    //export LD_LIBRARY_PATH=/Users/fanyx/apps/boolector/build/lib:$LD_LIBRARY_PATH
}