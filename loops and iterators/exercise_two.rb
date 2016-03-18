=begin
user should see
What is 1 + 1
They should be able to input answer and have either 
	"Yay, you're right!!!"
	or
	"Bummer, you're wrong!!!"
printed to screen based on your response.
User should be able to enter STOP at any time
	
=end

input = ""

until input == "STOP" do

first = rand(10)
second = rand(10)

puts "What is #{first} + #{second}"
input = gets.chomp

	if input.to_i == first + second
		puts "Yay, you're right!!!"
	else
		puts "Bummer, you're wrong!!!, the answer was #{first + second}"
	end
puts 'type "STOP" to stop!'

end
