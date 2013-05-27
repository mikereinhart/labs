require 'pry'
require 'pg'

conn = PG.connect(:dbname => 'facebook', :host => 'localhost')
conn.exec('SELECT * FROM users') do |result|
  #each user is now an element in the array of users
  #result is the array of all the users
  result.each do |row|
    binding.pry
  end
end

conn.close
