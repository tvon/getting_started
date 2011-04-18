class PostsController < ApplicationController
  expose(:posts) { Post.order(:created_at) }
  expost(:post)

end
