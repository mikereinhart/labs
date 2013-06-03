#class Movie
#	def name
#		@name
#	end
#	def name=(movie_name)
#		@name = movie_name
#	end
#
#	def length 
#		@length
#	end
#	def length=(movie_length)
#		@length = movie_length
#	end
#
#	def year
#		@year
#	end
#	def year=(movie_year)
#		@year = movie_year
#	end
#
#	def rating
#		@rating
#	end
#	def rating=(movie_rating)
#		@rating = movie_rating
#	end
#
#	def play 
#		"Playing #{name}..."
#	end
#end

#OR

class Movie
	attr_accessor :length, :year, :name, :rating

	def initialize(length, year, name, rating) 
		@length = length
		@year = year
		@name = name
		@rating = rating
	end

	def play
		puts "Playing #{name}..."
	end
end
