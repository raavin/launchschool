arr = [1, 3, 5, 7, 9, 11]
number = 5

def in_array?(array,number)
	if array.include?(number) 
		puts "Number appears in array"
	else
		puts "Number does not appear in array"
	end
end

puts in_array?(arr,number)