(module
  (type (;0;) (func))
  (type (;1;) (func (param i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32) (result i32)))
  (type (;5;) (func (param i32 i32) (result i32)))
  (import "env" "strLog" (func (;0;) (type 2)))
  (import "env" "numLog" (func (;1;) (type 1)))
  (func (;2;) (type 0)
    nop)
  (func (;3;) (type 4) (param i32) (result i32)
    (local i32 i32 i32)
    loop  ;; label = @1
      local.get 0
      local.get 1
      i32.add
      local.get 1
      i32.const 1
      i32.add
      local.tee 3
      local.set 1
      i32.load8_u
      br_if 0 (;@1;)
    end
    local.get 3
    i32.const -1
    i32.add)
  (func (;4;) (type 3) (result i32)
    i32.const 42)
  (func (;5;) (type 0)
    i32.const 1024
    i32.const 14
    call 0)
  (func (;6;) (type 1) (param i32)
    local.get 0
    i32.const 1
    i32.shl
    call 1)
  (func (;7;) (type 5) (param i32 i32) (result i32)
    i32.const 42)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 2)
  (global (;0;) i32 (i32.const 1024))
  (global (;1;) i32 (i32.const 1039))
  (global (;2;) i32 (i32.const 1024))
  (global (;3;) i32 (i32.const 66576))
  (global (;4;) i32 (i32.const 0))
  (global (;5;) i32 (i32.const 1))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func 2))
  (export "strLen" (func 3))
  (export "__original_main" (func 4))
  (export "greet" (func 5))
  (export "getDoubleNumber" (func 6))
  (export "main" (func 7))
  (export "__main_void" (func 4))
  (export "__indirect_function_table" (table 0))
  (export "__dso_handle" (global 0))
  (export "__data_end" (global 1))
  (export "__global_base" (global 2))
  (export "__heap_base" (global 3))
  (export "__memory_base" (global 4))
  (export "__table_base" (global 5))
  (data (;0;) (i32.const 1024) "Hello from C !"))
