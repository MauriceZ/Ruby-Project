def echo(message)
	message
end

def shout(message)
	message.upcase
end

def repeat(message, n=2)
	n -= 1
	final = message
	n.times do 
		final = final + " " + message
	end
	return final
end

def start_of_word(str,n)
	chars = str.split(//)
	letters = ""
	for i in 0..n-1 
		letters = letters + chars[i]
	end
	letters
end

def first_word(str)
	str.split(" ")[0]
end

def titleize(title)
	words = title.split(" ")
	words.each_with_index do |word, i|
		if i == 0 || (word != "and" && word != "over" && word != "the")
			words[i] = word.capitalize
		end
	end
	words.join(" ")
end
