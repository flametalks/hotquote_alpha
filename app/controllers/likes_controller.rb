class LikesController < ApplicationController
  def like
    @like = Like.new
  end

  def create
    @like = Like.new
    @like.like = 1
    @like.voter_ip = request.remote_ip
    if @like.save
        redirect_to root_path
    end
  end
end
