def translate(str)
	words = str.split(" ")
	words.each_with_index do |word,i|
		chars = word.split(//)
		j = 0
		firstLetters = ""
		nextLetter = chars[j]
		until is_vowel?(nextLetter) do
			firstLetters = firstLetters + chars[j]
			nextLetter = chars[j+1]
			if chars[j] + chars[j+1] == "qu"
				nextLetter = "z"
			end
			j += 1
		end
		midLetters = ""
		for j in j..word.length-1 
			midLetters = midLetters + chars[j]
		end
		words[i] = midLetters + firstLetters  + "ay"
	end

	words.join(" ")
end


def is_vowel?(s)
	if s == "a" || s == "e" || s == "i" || s == "o" || s == "u"
		return true
	else
		return false
	end
end

