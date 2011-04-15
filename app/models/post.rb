class Post < ActiveRecord::Base
  validates :title, :presence => true
  validates :content, :presence => true,
    :length => {:minimum => 5 }

  has_many :comments
end
