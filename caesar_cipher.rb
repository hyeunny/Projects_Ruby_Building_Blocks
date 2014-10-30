def caesar_cipher (string, shift)
	alphabet_l = ('a'..'z').to_a
	alphabet_u = ('A'..'Z').to_a
	string_to_return = ""

	if shift >= 26
		shift = shift%26
	end
	

	string.each_char do |c|
		if alphabet_l.include?(c) || alphabet_u.include?(c)
			new_val = c.ord + shift

			if new_val > 122
				new_val -= 26
				string_to_return += new_val.chr 
			elsif new_val > 90 && new_val <97
				new_val -= 26
				string_to_return += new_val.chr 		
			else
				string_to_return += new_val.chr 
			end
		else
			string_to_return +=c 
		end
	end
	return string_to_return
end

puts caesar_cipher("Zebra",5)