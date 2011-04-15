class PostsController < ApplicationController

  expose(:post)
  expose(:posts) { Post.order(:created_at) }

  def index
  end

  def show
  end

end
