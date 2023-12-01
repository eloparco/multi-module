(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func))
  (func $myfun1 (type 0) (result i32)
    i32.const 11)
  (func $myfun2 (type 0) (result i32)
    i32.const 12)
  (func $dummy (type 1))
  (func $__wasm_call_dtors (type 1)
    call $dummy
    call $dummy)
  (func $myfun1.command_export (type 0) (result i32)
    call $myfun1
    call $__wasm_call_dtors)
  (func $myfun2.command_export (type 0) (result i32)
    call $myfun2
    call $__wasm_call_dtors)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 16)
  (global $__stack_pointer (mut i32) (i32.const 1048576))
  (export "memory" (memory 0))
  (export "myfun1" (func $myfun1.command_export))
  (export "myfun2" (func $myfun2.command_export)))
