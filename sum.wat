(module
  (func (export "sum") (param i32) (result i32)
    (local $i i32)
    (local $sum i32)
    (loop $my_loop
      local.get $i
      local.get $sum
      i32.add
      local.set $sum

      local.get $i
      i32.const 1
      i32.add
      local.set $i

      local.get $i
      local.get 0
      i32.le_u
      br_if $my_loop
    )
    (local.get $sum)
))
