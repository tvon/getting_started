class VotesController < ApplicationController

  before_filter :authenticate_user!, :except => [ :show, :index]

  respond_to :html, :js

  expose(:asset)
  expose(:votes) { asset.votes }
  expose(:vote)

  def new
  end

  def create
    vote.asset = asset
    if vote.save
      respond_with vote.asset
    else
      render :new
    end
  end

end

