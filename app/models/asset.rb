require 'carrierwave/orm/mongoid' 

class Asset
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name
  field :attachment

  mount_uploader :attachment, AttachmentUploader

  has_many :comments

  embeds_many :votes

  def upvotes
    votes.find(:kind => Vote::UPVOTE)
  end

  def downvotes
    votes.find(:kind => Vote::DOWNVOTE)
  end
end
