class StocksController < ApplicationController
  def quote
  end
  def yahoo
    @symbol = params[:symbol].upcase
    count = params[:count].to_i
    @quotes = count.times.map{sleep 5; YahooFinance::get_quotes(YahooFinance::StandardQuote, @symbol)[@symbol].lastTrade}
    @avg = @quotes.inject(&:+) / count
    @quotes.each{|q| Stock.create(:symbol => @symbol, :quote => q)}
  end
  def tally
    stocks = Stock.select(:symbol).uniq
    symbols = stocks.map{|stock| stock.symbol}
    @output = {}
    symbols.each do |symbol|
      @output[symbol] = Stock.where(:symbol => symbol)
    end
  end
end
