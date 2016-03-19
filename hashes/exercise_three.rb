hash = {one: "1", two: "2", three: "3", four: "4", five: "5", six: "6"}

puts hash.map { |key,value| key }
puts hash.map { |key,value| value }
puts hash.map { |key,value| key.to_s + " => " + value.to_s }