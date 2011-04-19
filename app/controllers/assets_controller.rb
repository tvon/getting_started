class AssetsController < ApplicationController

  before_filter :authenticate_user!, :except => [ :show, :index]

  expose(:assets) { Asset.order(:created_at) }
  expose(:asset)
  expose(:comments) { asset.comments }

  def show; end

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

end
