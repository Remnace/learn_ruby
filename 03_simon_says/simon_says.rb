#write your code here
def echo(a)
	return a
end

def shout(a)
	return a.upcase
end

def repeat(a, b=nil)
	if b == nil then
		return a + ' ' + a
	end
	return [a] * b * ' '
end

def start_of_word(a, b)
	a.split('')
	c = 0
	toReturn = ''
	while c < b do
		toReturn += a[c]
		c+=1
	end
	return toReturn
end

def first_word(a)
	words = a.split(/\W+/)
	return words[0]
end

def titleize(a)
	words = a.split(/\W+/)
	check = words[0]
	check[0] = check[0].upcase
	words[0] = check
	for word in words
		if word == 'and' || word == 'over' || word == 'the' then
			next
		end
		word[0] = word[0].upcase
	end
	return words.join(' ')
end