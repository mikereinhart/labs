puts "(a)dd, (s)ubtract, (m)ultiple, (d)ivide, or enter 'q' to quit:"
	math_type = gets.chomp.downcase

puts "First number:"
	num_1 = gets.chomp.to_f

puts "Second Number:" 
	num_2 = gets.chomp.to_f

case math_type
	when 'q'
		puts "Goodbye!"
	when 'a'
		answer = num_1 + num_2
	when 's'
		answer = num_1 - num_2
	when 'm'
		answer = num_1 * num_2
	when 'd'
		answer = num_1 / num_2
	else 
		puts "Please enter either a, s, m, or d to do math. Enter q to quit:"
end

puts "The answer is #{answer}!"
