class HomeController < ApplicationController
  def index
  end
  def enqueue
    session[:queue] = Que.new if session[:queue].nil?
    session[:queue].enqueue(params[:color])
    render :json => session[:queue]
  end
  def dequeue
    session[:queue].dequeue
    render :json => session[:queue]
  end
end
