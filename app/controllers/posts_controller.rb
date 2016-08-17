class PostsController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.order('created_at DESC')
  end


  def create
    @post = Post.new(post_params)
    @post.likes = 1
    if @post.save
      redirect_to root_path
    else
      redirect_to root_path
    end

  end

  def show
    @post = Post.find(params[:id])
  end

  def like
    @post = Post.find(params[:id])
    if @post.likesarray.include?(request.remote_ip)
      redirect_to root_path
    else
      @post.likesarray.push(request.remote_ip)
      @post.likes += 1
      @post.save
      redirect_to root_path
    end
  end

  def terms_of_use
  end
  private

  def post_params
    params.require(:post).permit(:body, :nickname)
  end
end
