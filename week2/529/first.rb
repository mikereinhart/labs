require 'sinatra'
require 'sinatra/reloader' if development?

puts development?
puts production?

get '/' do
	'Hello World'
end

get '/say/:my_name' do
	"Your name is definitely: #{params[:my_name]}"
end




get '/name/:first/:last' do
	"Your name is : #{params[:first]} #{params[:last]}"
end

get '/first_page/:your_name' do
	@your_name = params[:your_name]
	erb :first_page
end

=begin

get '/say/:whatever' do
p params[:whatever]
	"Your name is definitely: #{params[:my_name]}"
end

^ the 'p params[:whatever]' line will not return the parameter :whatever
to the person browsing the web. it WILL print in your terminal, however.
The only piece that returns to the user is the last line, which is 
"your name is definitely: ". In the case above, where the parameters
	:whatever and :my_name do not match, no 'name' will print.





#this is server code. Get is a method of HTTP. the response to 
#the requester is 'Hello World'.
	
server has to anticipate what the requester might request
and formulate responses?
=end