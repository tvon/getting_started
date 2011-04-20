class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title
  field :author
  field :body
end
