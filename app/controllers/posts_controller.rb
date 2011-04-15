class PostsController < ApplicationController
  def index
    respond posts
  end

  def show
    respond post
  end

  private
  def respond(resource)
    respond_to do |format|
      format.html 
      format.json { render :json => resource }
    end
  end

  def posts
    @posts ||= Post.order(:created_at)
  end
  helper_method :posts

  def post
    @post ||= params[:id] ? Post.find(params[:id]) : Post.new(params[:post])
  end
  helper_method :post

end
