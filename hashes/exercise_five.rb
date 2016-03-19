person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

p person.value?('Bob')
p person.has_value?('Bob')

def contains_value(element, array)
	array.value?(element) ? 
	"It indeed contains #{element}" : 
	"Alas, it does not contain #{element}"
end

puts contains_value('Jane', person)
puts contains_value('Bob', person)