class StocksController < ApplicationController
  def get_quote
  end

  def show_quote
    symbols = params[:stocks].upcase.split(', ')
    @stocks = symbols.map{|symbol| YahooFinance::get_quotes(YahooFinance::StandardQuote, symbol)[symbol]}
  end
end
