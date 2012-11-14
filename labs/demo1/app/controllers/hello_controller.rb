class HelloController < ApplicationController
  def world
    render :text => "hello world!!!"
  end
  def chyld
    render :text => "medford"
  end
  def dogs
    render :text => "cats"
  end
  def ruby
    render :text => "rails"
  end
end
