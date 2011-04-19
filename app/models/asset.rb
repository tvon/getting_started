class Asset < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader

  has_many :comments
end
