class Asset < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader
end
