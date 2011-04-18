class AssetsController < ApplicationController

  expose(:assets) { Asset.order(:created_at) }
  expose(:asset)

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
