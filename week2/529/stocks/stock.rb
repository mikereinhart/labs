require 'pry'
require 'yahoofinance'
require 'sinatra'
require 'sinatra/reloader' if development?

get '/quote' do
  if params[:symbol]
  @symbol = params[:symbol].upcase
  @price = YahooFinance::get_quotes(YahooFinance::StandardQuote, @symbol) [@symbol].lastTrade #unless @symbol.nil?
  else

  end

  erb :stocks

end