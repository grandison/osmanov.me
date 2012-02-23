class CommentsController < ApplicationController
#  cache_sweeper :product_sweeper  
  
  def create
    comment = Comment.create(params[:comment])
    redirect_to root_path
  end
  
end
