require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'active_support/all'
require 'httparty'
require 'json'

get '/' do
	if params[:title].present? #Don't do any of this if a title has not been passed
		movie_title = params[:title].gsub(' ','+') #can do multiple .gsubs for different conditions
		url_string = "http://www.omdbapi.com/?t=#{movie_title}"
		json = HTTParty.get(url_string)
		@movie_data_hash = JSON(json) #uses JSON gem to parse JSON
		#binding.pry
		puts json
	end

	erb :index
end


=begin
We are running main.rb in Sinatra, which hosts the local
server. We enter that local server through our web browser.
When we reload the page, the web server goes to sinatra,
which has main.rb open. main.rb goes runs, linking to
index.erb and layout.erb because they are in our views file.
=end