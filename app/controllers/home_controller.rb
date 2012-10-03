class HomeController < ApplicationController
  def index
    render
  end

  def about
    render :text => 'This calendar was lovingly crafted by me'
  end
end
