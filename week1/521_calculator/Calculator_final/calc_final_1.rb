require_relative 'basic_calculator'

def validate_options(answer, options)
	while !options.include? answer
		puts "Enter valid option"
		answer = gets.chomp
	end
end

  def get_numbers
    puts "First number:"
    @num_1 = gets.chomp.to_f
    puts "Second Number:"
    @num_2 = gets.chomp.to_f
  end


def advanced_calculator
	puts "(p)ower, (s)quare root:"
	function = gets.chomp.downcase

	validate_options(resp, ['p', 's'])

	if function == 'p'
		get_numbers
		puts @num_1 ** @num_2
	elsif function == 's'
		puts "Square root of:"
		number = gets.chomp.to_f
		puts Math.sqrt(number)
	end
end

def menu
	puts "(b)asic, (a)dvanced, or (q)uit:"
	answer = gets.chomp.downcase

	while answer != 'q'
		case answer
		when 'b'
			#input basic calc
		when 'a'
			#go to advanced calc
		when 'q'
			"You have quit the calculator!"
		end
		puts "(b)asic, (a)dvanced, or (q)uit:"
		answer = gets.chomp.downcase
	end
end

menu