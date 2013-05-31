require 'pg'
require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
	@tasks = run_sql("SELECT * FROM tasks")
	erb :home
end

post '/create' do
	run_sql("INSERT INTO tasks (title, description) VALUES ('#{params[:title].gsub(' ','+')}', '#{params[:description].gsub(' ','+')}')")
	redirect to('/')
end

get '/completed' do
	run_sql("DELETE FROM tasks WHERE title='#{params[:title]}'")
	redirect to('/')
end

def run_sql(sql)
	conn = PG.connect(:dbname => 'tasklist', :host => 'localhost')
	data = conn.exec(sql)
	conn.close
	data
end