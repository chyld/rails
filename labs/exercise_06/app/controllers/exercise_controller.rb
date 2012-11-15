class ExerciseController < ApplicationController
  def a
  end
  def b
  end
  def c
  end
  def switch
    redirect_to send("#{params[:letter]}_path")
  end
end
