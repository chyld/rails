class HomeController < ApplicationController
  def start
  end

  def one
  end

  def two
  end

  def three
  end

  def switch
    number = params[:number].to_i

    case number
    when 1
      redirect_to one_path
    when 2
      redirect_to two_path
    when 3
      redirect_to three_path
    end
  end
end
