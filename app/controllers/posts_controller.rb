class PostsController < ApplicationController

  expose(:post)
  expose(:posts) { Post.order(:created_at) }

  def index
  end

  def show
  end

  def new
  end

  def create
    if post.save
      redirect_to posts_path, :notice => "Post created"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if post.update_attributes(params[:posts])
      redirect_to posts_path, :notice => "Post updated"
    else
      render :edit
    end
  end

  def destroy
    post.destroy
    redirect_to posts_path, :notice => "Post deleted"
  end

end
