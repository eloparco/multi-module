mod api;
// use api::linking2;

pub fn myfun3() -> u32 {
    unsafe { api::linking2::myfun1() }
}

#[no_mangle]
pub fn myfun5() -> u32 {
    myfun3() + 35
}

#[no_mangle]
fn main() {
    println!("Hello, world!");
}
