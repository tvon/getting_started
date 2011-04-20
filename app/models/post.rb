class Post
  include Mongoid::Document
  field :title
  field :author
  field :body
  field :created_at, :type => DateTime
  field :updated_at, :type => DateTime
end
