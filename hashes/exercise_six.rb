=beging
I started with this strategy but got a bit stuck so have looked at the strategy suggested by launchschool.
Sorting is definitely the easiest way to go but in the interest of not cheating, I have decided to continue on to see if mu original strategy would work.
Currently I can identify the anagrams and, cheating a bit with uniq can get them in order.
anagrams_all seems to capture the first iteration but am still trying to figure out how I can start a new group of words in a new array.
currently the first array keeps getting added to.
=end
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon', 'flfub', 'flufm']

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

anagrams_all = []
anagrams = []

words.each_with_index do |item, reference_word_index|
	words.each_with_index do |item, index|
		#checks that length is same then checks if all letters are there
		if words[reference_word_index].length == words[index].length &&
			 words[reference_word_index].split("").include?(words[index][0]) && 
			 words[reference_word_index].split("").include?(words[index][1]) &&
			 words[reference_word_index].split("").include?(words[index][2]) &&
		   words[reference_word_index].split("").include?(words[index][3])

			 #puts item + " is anagram & index is " + index.to_s
			 anagrams << item
			 #p anagrams
		#else 
		#	 puts "not anagram"
		end
	end
	anagrams_all << anagrams.uniq
end
#p anagrams.uniq
p anagrams_all