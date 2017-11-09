class PostsController < ApplicationController
  
  def set_post
    @post = Post.find(params[:id])
  end

  def index
    @post = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.create(post_params)
    redirect_to @post
  end

  def edit
    @post = Post.find(params[:id])
  end

  def show
    @post = Post.find(params[:id])
    @user = User.find(@post.user_id)
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to @post
  end

  def destroy
    Post.find(params[:id]).destroy
    redirect_to posts_path
  end 

  private

  def post_params
    params.require(:post).permit(:content, :title)
  end

end
