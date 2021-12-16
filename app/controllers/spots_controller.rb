class SpotsController < ApplicationController

  def index
    @user = User.find_by(params[:id])
    @category = Category.new
    @categories = @user.categories
    @post = Post.new
    @post.build_spot
  end

  def show
    @post = Post.find(params[:id])
    @lat = @post.spot.latitude
    @lng = @post.spot.longitude
    gon.lat = @lat
    gon.lng = @lng
  end


end
