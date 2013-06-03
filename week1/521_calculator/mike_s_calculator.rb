def calculator
	funct=nil
	while true
		print "text to ask the user:"
		funct=gets.chomp.downcase
		if funct == 'q'
			break
		end
		valid_options = ['a', 's', 'm', 'd']
		unless valid_options.include? funct
			puts "Please enter a valid option"
			next
		end

		print "First number:"
		f_num = gets.chomp.to_f
		print "second number:"
		s_num = gets.chomp.to_f
		if funct == 'a'
			ans = f_num + s_num
		elsif
			ans = f_num - s_num
		elsif
			ans = f_num * s_num
		elsif
			ans = f_num / s_num
		end
		puts "Your answer is #{ans}!"
	end
puts "Calculator quits on you"
end
