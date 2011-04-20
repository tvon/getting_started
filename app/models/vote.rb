class Vote
  include Mongoid::Document

  embedded_in :asset
  embedded_in :comment

end
