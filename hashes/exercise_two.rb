hash_one = {one: "1", two: "2", three: "3"}
hash_two = {three: "7", four: "4", five: "5", six: "6"}

p hash_one.merge(hash_two)
puts hash_one.to_s + " This is hash_one which is unchanged even though it has been merged with hash_two above"
p hash_two

p hash_one.merge!(hash_two)
puts hash_one.to_s + " This is hash_one which has been mutated by the merge bang"
p hash_two