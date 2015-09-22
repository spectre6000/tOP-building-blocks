#Substrings: find words from a dictionary in a string, output to hash with counter

def substring( string, dictionary ) 
	#define output as a hash
	output = Hash.new( 0 )
	#iterate through the provided dictionary...
	dictionary.each do | i | 
		#... and iterate through the provided string (downcased for comparison) 
		# to match the dictionary word to the word in the string
		string.downcase.scan( i ) do | x | 
			#push the word to the output hash with a counter of one, or add one 
			#to the counter of an existing word if it's already in the hash
			output[ x ] += 1
		end
	end
	#return the output hash
	output 
end

#Stock Picker: finds best days to buy/sell; sell date must come after buy date 

#block
def stock_picker( days )
	#assign output placeholders
	low = 0
	high = 0
	diff = 0
	#nested iteration
	days.each do | day1 |
		days.each do | day2 |
			#basic comparison
			if day2 - day1 > diff
				if days.index( day2 ) > days.index( day1 )
					#assignments
					diff = day2 - day1
					low = days.index( day1 )
					high = days.index( day2 )
				end
			end
		end
	end
	#output
	return "buy day is #{low}, sell day is #{high}, profit is #{diff}"
end

#Caesar Cipher: shifts string by count while retaining capitalization, punctuation, and special chars

#"A".bytes = 65
#"Z".bytes = 90
#"a".bytes = 97
#"z".bytes = 122

def caesar_cipher( string, count )
	output = ''
	string.each_byte do | letter | 
		#retains punctuation and special chars
		if letter < 65 || ( letter > 90 && letter < 97 ) || letter > 122
			letter = letter
		#capital letters
		elsif letter >= 65 && letter <= 90
			if letter + count > 90
				letter = letter + ( count - 26 )
			elsif letter + count < 65
				letter = letter + ( count + 26 )
			else
				letter = letter + count
			end				
		#lowercase letters
		elsif letter >= 97 && letter <= 122
			if letter + count > 122
				letter = letter + ( count - 26 )
			elsif letter + count < 97
				letter = letter + ( count + 26 )
			else
				letter = letter + count
			end
		end
		#output
		output << letter.chr
	end
	output
end