=begin
I started with this strategy but got a bit stuck so have looked at the strategy suggested by launchschool.
Sorting is definitely the easiest way to go but in the interest of not cheating, I have decided to continue on to see if mu original strategy would work.
Currently I can identify the anagrams and, cheating a bit with uniq can get them in order.
anagrams_all seems to capture the first iteration but am still trying to figure out how I can start a new group of words in a new array.
currently the first array keeps getting added to.
=end

=begin
get first word
see if next word contains each character
	word_two.has_value?(word_one[1]) ? n += 1 : exit out of loop
	if n == 4 then word is anagram
push word to new array if 
=end
#reference_word_index = 0
#target_word_index = 17
#letter = 0
#p words[target_word_index][letter] == words[0][0]
#p words[0][0]
#p words[0].split("").include?(words[target_word_index][letter])

# TODO:
# 1.  If i include a word with more than one of the same letter, 
# 		it will find the letter in the target word even if there is only one.
#  		Need to perhaps pop off the letter once counted
# 2.  Currently only works with numbers with 4 digits. It will do the 
#  		count but will only check 4 letters



words =  ['dddd', 'demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon', 'flfub', 'flufm']

def sort_anagrams(words)
	anagrams_all = []

	words.each_with_index do |item, reference_word_index|

		anagrams = []

		words.each_with_index do |item, index|
			#checks that length is same then checks if all letters are there
			if words[reference_word_index].length == words[index].length &&
				 words[reference_word_index].split("").include?(words[index][0]) && 
				 words[reference_word_index].split("").include?(words[index][1]) &&
				 words[reference_word_index].split("").include?(words[index][2]) &&
				 words[reference_word_index].split("").include?(words[index][3])

				 anagrams << item
			end
		end
		anagrams_all << anagrams.uniq
	end
	anagrams_all.uniq
end

sort_anagrams(words).each_with_index do |array,index|
	p sort_anagrams(words)[index]
end
