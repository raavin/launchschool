arr = ["b", "a"]
p arr
arr = arr.product(Array(1..3))
p arr
arr.first.delete(arr.first.last)
p arr

arr = ["b", "a"]
p arr
arr = arr.product([Array(1..3)])
p arr
arr.first.delete(arr.first.last)
p arr