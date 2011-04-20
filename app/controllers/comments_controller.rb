class CommentsController < ApplicationController

  before_filter :authenticate_user!, :except => [ :show, :index]

  respond_to :html, :js

  expose(:asset)
  expose(:comments) { asset.comments.desc(:created_at) }
  expose(:comment)

  def show
    respond_with comment
  end

  def new
  end

  def create
    comment.user = current_user
    comment.asset = asset # Shouldn't this be automgic?
    if comment.save
      respond_with comment.asset
    else
      render :new
    end
  end

end
