hash = Hash.new

["bob", "jane", "suki", "katara"].each_with_index do |item, index|

	puts item + " has the index " + index.to_s

end