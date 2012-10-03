class HomeController < ApplicationController
  def index
    render :text => '<h1>Welcome to my calendar!</h1>'
  end

  def about
    render :text => 'This calendar was lovingly crafted by me'
  end
end
