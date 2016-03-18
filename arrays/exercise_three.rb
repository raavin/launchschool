# How do you print the word "example" from the following array?

arr = [["test", "hello", "world"],["example", "mem"]]

# The following works when you know where the word is in the nested array
# It is also peculiar to this example because the word is located 
# first and last
puts arr.last.first
# The following 'searches' for the word in the nested array
# and returns the matched word.
puts arr.flatten.select { |word| word == "example"}