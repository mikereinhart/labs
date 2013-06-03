
def get_numbers
	puts "First number:"
	@num_1 = gets.chomp.to_f

	puts "Second Number:" 
	@num_2 = gets.chomp.to_f
end

puts "(a)dd, (s)ubtract, (m)ultiple, (d)ivide, or enter 'q' to quit:"
		math_type = gets.chomp.downcase
	if math_type == 'q'
		puts "Get outta here!"
		break
	else math_type != 'a' || math_type != 's' || math_type != 'm' || math_type != 'd'
		"Please enter either a, s, d, or m"
	end
	case math_type
		when 'a'
			get_numbers
			answer = @num_1 + @num_2
		when 's'
			get_numbers
			answer = @num_1 - @num_2
		when 'm'
			get_numbers
			answer = @num_1 * @num_2			
		when 'd'
			get_numbers
			answer = @num_1 / @num_2
	end
	puts "The answer is #{answer}!"

puts "(a)dd, (s)ubtract, (m)ultiple, (d)ivide, or enter 'q' to quit:"
	math_type = gets.chomp.downcase

