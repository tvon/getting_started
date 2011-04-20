class Asset
  include Mongoid::Document
  field :name
  field :attachment
  field :created_at, :type => DateTime
  field :updated_at, :type => DateTime

  #mount_uploader :attachment, AttachmentUploader

  has_many :comments
end
