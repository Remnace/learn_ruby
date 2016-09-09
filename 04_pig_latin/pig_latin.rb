#write your code here
def translate(a)
	words = a.split(/\W+/)
	vowels = 'aeiou'
	consonants ='bcdfghjklmnpqrstvwxyz'
	output = ''
	#Case for multiple words
	if words.length > 1
		for word in words
			i = 0
			if vowels.include?(word[0])
				word = word + 'ay'
			elsif consonants.include?(word[0]) and vowels.include?(word[1])
				if word[0]+word[1] == 'qu'
					ending = 'quay'
					word[0] = ''
					word[0] = ''
					word = word + ending
				else
					ending = word[0] + 'ay'
					word[0] = ''
					word = word + ending
				end
			else
				ending = word[0] + word[1] + 'ay'
				word[0] = ''
				word[0] = ''
				word = word + ending
			end
			output += word + ' '
			i+=1
		end
		output[output.length-1] = ''
		return output
	#Case for a single word
	else 
		if vowels.include?(a[0]) 
			return a + 'ay'
		elsif consonants.include?(a[0]) and vowels.include?(a[1])
			if (a[0]+a[1] == 'qu')
				ending = 'quay'
				a[0] = ''
				a[0] = ''
			else
				ending = a[0] + 'ay'
				a[0] = ''
			end
			return a + ending
		elsif consonants.include?(a[0]) and consonants.include?(a[1]) and consonants.include?(a[2])
			ending = a[0] + a[1] + a[2] + 'ay'
			a[0] = ''
			a[0] = ''
			a[0] = ''
			return a + ending
		else
			if a[1]+a[2] == 'qu'
				ending = a[0] + 'quay'
				a[0] = ''
				a[0] = ''
				a[0] = ''
			else
				ending = a[0] + a[1] + 'ay'
				a[0] = ''
				a[0] = ''
			end
			return a + ending
		end
	end
end