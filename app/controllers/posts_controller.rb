class PostsController < ApplicationController
  before_action :load_post, only: [:edit, :update]
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def edit

  end

  def update
    @post.update post_params
    redirect_to root_path
  end

  def create
    Post.create post_params
    redirect_to root_path
  end

  private
  def load_post
    @post = Post.find params[:id]
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
