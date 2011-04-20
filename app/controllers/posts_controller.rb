class PostsController < ApplicationController

  before_filter :authenticate_user!, :except => [ :show, :index]
  
  expose(:posts) { Post.desc(:created_at) }
  expose(:post)

  def new
  end

  def delete
  end

  def destroy
    post.destroy
    redirect_to posts_url, :notice => "post destroyed"
  end

  def create
    if post.save
      redirect_to posts_path, :notice => "Post saved, nice work."
    else
      render :new
    end
  end

end
