class StocksController < ApplicationController
  def get_quote
  end
  def show_quote
    @symbol = params[:symbol].upcase
    count = params[:count].to_i
    @quotes = count.times.map{sleep 5; YahooFinance::get_quotes(YahooFinance::StandardQuote, @symbol)[@symbol].lastTrade}
    @avg = @quotes.inject(&:+) / count
  end
end
