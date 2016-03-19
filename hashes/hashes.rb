person = {:height => "180cm", :weight => "89kg", eyes: "brown"}
person_id = {age: "45"}

person_id[:shoe_size] = "UK9"
person.delete(:eyes)

puts person[:height]
p person
p person_id

person.merge!(person_id)

p person

person.each do |key,value|
	puts "Jason's #{key.to_s} is #{value}"
end