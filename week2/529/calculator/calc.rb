require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?

get '/calc' do
  @first = params[:first_parameter].to_f
  @second = params[:second_parameter].to_f

  case params[:operator]
  when '-'
    @result = @first - @second
  when '+'
    @result = @first + @second
  when '*'
    @result = @first * @second
  when 'd'
    @result = @first / @second
  end
	#@result

  erb :my_calc
end
=begin
  puts params[:operator]
  @first = params[:first].to_f
  @second = params[:second].to_f
  

  erb :my_calc
end
=end
