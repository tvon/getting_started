class Vote
  include Mongoid::Document

  UPVOTE = 1
  DOWNVOTE = 0

  embedded_in :asset
  embedded_in :comment

  field :kind, :type => Integer

end
