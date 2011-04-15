class CommentsController < ApplicationController

  expose(:post)
  expose(:comments) { post.comments }
  expose(:comment)

  def index
  end

  def new
  end

  def create
    if comment.save
      redirect_to comment.post, :notice => "Comment added, thanks for your input."
    else 
      render :new
    end
  end

  def destroy
  end

  def edit
  end
end
