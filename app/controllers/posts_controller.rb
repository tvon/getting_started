class PostsController < ApplicationController
  expose(:posts) { Post.order(:created_at) }
  expose(:post)
end
