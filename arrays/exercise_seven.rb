=begin
Write a program that iterates over an array and builds a new array 
that is the result of incrementing each value in the original array 
y a value of 2. You should have two arrays at the end of this program
, The original array and the new array you've created. Print both 
arrays to the screen using the p method instead of puts.
=end

# My solution
array = [1,2,3,4,5,6,7,8,9]

new_array = array.map { |e| e+=2 }

p array
p new_array

# Launchschool solution

arr = [1, 2, 3, 4, 5,6,7,8,9]
new_arr = [] # create empty array

arr.each do |n|
  new_arr << n + 2 # use shovel operator to add new elements to array
end

p arr
p new_arr