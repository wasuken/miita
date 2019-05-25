class CommentsController < ApplicationController
  def create
    Comment.create(item_id: params[:comment][:item_id],
                   user_id: params[:comment][:user_id],
                   comment: params[:comment][:comment])
    redirect_to "/"
  end
end
