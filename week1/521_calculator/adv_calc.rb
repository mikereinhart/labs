

  def adv_calc
    puts "(p)ower or (s)quare root:"
    a_type = gets.chomp.downcase

    if a_type != 'p' || a_type != 's'
      "Please enter either 'p' or 's' to do advanced math."
    end
    case a_type
    when 'p'
      get_numbers
      answer = @num_1 ** @num_2
    when 's'
      puts "What do you want to find the square root of?"
      root_num = gets.chomp.downcase.to_f
      answer = Math.sqrt(root_num)
    end
    puts "#{answer}"
  end

  def basic_calc
    puts "(a)dd, (s)ubtract, (m)ultiple, (d)ivide, or enter 'q' to quit:"
    math_type = gets.chomp.downcase

    while math_type != 'q'
      if math_type != 'a' || math_type != 's' || math_type != 'm' || math_type != 'd'
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

      #puts "Exit"
      puts "(a)dd, (s)ubtract, (m)ultiple, (d)ivide, or enter 'q' to quit:"
      math_type = gets.chomp.downcase
    end
  end


  def get_numbers
    puts "First number:"
    @num_1 = gets.chomp.to_f
    puts "Second Number:"
    @num_2 = gets.chomp.to_f
  end

while answer != 'q'
	when answer == 'a'
		adv_calc
	when answer == 'b'
		basic_calc
	end
  puts "(b)asic or (a)dvanced? you can also input (q) to quit."
  calc_type = gets.chomp.downcase
  if calc_type == 'a'
    adv_calc
  elsif calc_type == 'b'
    basic_calc
  elsif calc_type == 'q'
    puts "Goodbye!"
  end


end
