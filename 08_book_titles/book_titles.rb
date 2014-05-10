class Book
	
	attr_accessor :title
	def title(givenTitle)
		@title = givenTitle
	end

	def title
		words = @title.split(" ")
		words.each_with_index do |word, i|
			if i == 0 || capitalize_word?(word)
				words[i] = word.capitalize
			end
		end
		@title = words.join(" ")
		return @title
	end

end
	

def capitalize_word?(word)
	words = ["the", "a", "an", "and", "in", "of"]
	words.each do |n|
		if word == n
			return false
		end
	end
	return true
end