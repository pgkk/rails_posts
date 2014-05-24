class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to :action => 'index'
    else
      redirect_to :back
    end
  end

  def update
      if @post.update(post_params)
        redirect_to :action => 'show'
      else
        redirect_to :action => 'index'
      end
  end

  def show
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
      params.require(:post).permit(:title, :content)
  end

end
