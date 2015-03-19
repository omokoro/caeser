def caeser_cipher(message, shift)
	word = []
	message.each_char do	|c| 
		if (65..90) === c.ord
			c = c.ord + shift
			c = c.ord - 26 if c.ord > 90
		elsif (97..122) === c.ord
			c = c.ord + shift			
			c = c.ord - 26 if c.ord > 122
		end
		word.push(c.chr)
	end
	puts word.join

end

caeser_cipher("This is an example string.",7)
