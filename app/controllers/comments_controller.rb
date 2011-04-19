class CommentsController < ApplicationController

  expose(:asset)
  expose(:comments) { Comment.order(:created_at) }
  expose(:comment)

  def new
  end

  def create
    comment.user = current_user
    comment.asset = asset # Shouldn't this be automgic?
    if comment.save
      redirect_to comment.asset, :notice => 'Commented added, thanks for your input.'
    else
      render :new
    end
  end

end
