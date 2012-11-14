class HomeController < ApplicationController
  def start
  end
  def create
    @name = params[:name]
  end
end
