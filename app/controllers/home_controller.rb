class HomeController < ApplicationController
#  caches_page :index
#  caches_action :index
  
  def index
    @comment = Comment.new
  end
  
end
