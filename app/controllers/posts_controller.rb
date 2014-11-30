class PostsController < ApplicationController
  def index
  	@posts = Post.all
  end

  def show
  	@posts = Post.find(params[:id])
  end

  def new
  	@posts = Post.new
  end
end
def create
    @post = Post.new(post_params)

    if @post.save
        redirect_to posts_path
    else
        render :new
    end
end
