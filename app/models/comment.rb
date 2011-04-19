class Comment < ActiveRecord::Base

  belongs_to :asset
  belongs_to :user 

end
