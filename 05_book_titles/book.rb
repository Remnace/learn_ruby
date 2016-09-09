class Book
# write your code here
	attr_reader :title

	def title=(new_title)
		words = new_title.split(' ')
		conjunctions = ['and', 'but', 'or', 'yet', 'for', 'nor', 'so']
		prepositions = ['in', 'of', 'the']
		articles = ['a', 'an']
		for word in words
			if (conjunctions.include?(word))
				next
			elsif (prepositions.include?(word))
				next
			elsif (articles.include?(word))
				next
			else
				word[0] = word[0].upcase
			end
		end
		@title = words.join(' ')
		@title[0] = @title[0].upcase
	end
end