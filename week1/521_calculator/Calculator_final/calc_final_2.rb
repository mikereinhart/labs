class BasicCalculator
	def basic_calculator(resp, first, second)
		case math_type
		when 'a'
			@num_1 + @num_2
		when 's'
			@num_1 - @num_2
		when 'm'
			@num_1 * @num_2
		when 'd'
			@num_1 / @num_2
		end
	end

	def menu
		puts "(a)dd, (s)ubtract, (m)ultiple, or (d)ivide:"
		math_type = gets.chomp.downcase

		validate_options(resp, ['a', 's', 'm', 'd'])

		get_numbers
		puts calculate(resp, first, second)
	end
end