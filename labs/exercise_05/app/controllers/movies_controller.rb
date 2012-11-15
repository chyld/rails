class MoviesController < ApplicationController
  def get_movie
  end

  def show_movie
    movie_names = params[:movies].split(', ')
    @movies = movie_names.map {|name| JSON(HTTParty.get("http://www.omdbapi.com/?t=#{name.gsub(' ', '+')}")) }
    # binding.pry
  end
end
