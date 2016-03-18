
number = gets.chomp.to_i

def countdown(number)
	if number == 0 
		puts "Blastoff!!!"
	elsif number < 0
		puts "Number cannot be negative :("
	else 
		number -= 1
		puts number
		countdown(number)
	end
end

countdown(number)