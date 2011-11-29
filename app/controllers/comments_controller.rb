class CommentsController < ApplicationController
  
  def create
    comment = Comment.create(params[:comment])
    redirect_to root_path
  end
  
end
