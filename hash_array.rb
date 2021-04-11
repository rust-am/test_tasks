arr = [{a: 1, b: 2, c: 45}, {d: 123, c: 12}, {e: 87}]

p arr.reduce(:merge).keys

p arr.inject { |memo, var| memo.merge(var) }.values

p arr.reduce(:merge).values.sum
