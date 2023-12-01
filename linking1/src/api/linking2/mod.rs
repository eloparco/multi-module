#[link(wasm_import_module = "linking2")]
extern "C" {
    pub fn myfun1() -> u32;
    pub fn myfun2() -> u32;
}
