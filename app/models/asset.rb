require 'carrierwave/orm/mongoid' 

class Asset
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name
  field :attachment

  mount_uploader :attachment, AttachmentUploader

  has_many :comments

  embeds_many :votes
end
