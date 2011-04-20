class AssetsController < ApplicationController

  before_filter :authenticate_user!, :except => [ :show, :index]

  respond_to :html, :js

  expose(:assets) { Asset.desc(:created_at) }
  expose(:asset)
  expose(:comments) { asset.comments }
  expose(:comment) { Comment.new }

  def index
    respond_with assets
  end

  def show
    respond_with asset
  end

  def new
  end

  def create
    if asset.save
      redirect_to assets_path, :notice => "Asset created."
    else
      render :new
    end
  end

  def delete
  end

  def destroy
    asset.destroy
    redirect_to assets_url, :notice => "Asset deleted."
  end

  def update
    if asset.update_attributes(params[:articles])
      redirect_to assets_path, :notice => "Asset updated"
    else
      render :edit
    end
  end

  def upvote
    asset.votes << Vote.new(:kind => Vote::UPVOTE)
    render :show
  end

  def downvote
    asset.votes << Vote.new(:kind => Vote::DOWNVOTE)
    render :show
  end

end
