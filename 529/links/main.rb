require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  erb :home
end

get '/home' do
  erb :home
end

get '/sports' do
  erb :sports
end

get '/weather' do
  erb :weather
end

get '/gossip' do
  erb :gossip
end

get '/celebrity' do
  erb :celebrity
end

post '/navigation' do
	puts params['destination']
	case params[:destination].downcase
	when 'sports' then
		redirect to('/sports')
	when 'weather' then
		redirect to('/weather')
	when 'gossip' then 
		redirect to('/gossip')
	when 'celebrity' then 
		redirect to('/celebrity')
	when 'home' then
		redirect to('/home')
	end
end