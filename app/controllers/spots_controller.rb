class SpotsController < ApplicationController

  def index
    @user = User.find_by(params[:id])
    @category = Category.new
    @categories = @user.categories
    @post = Post.new
    @post.build_spot
  end

  def create
    @post = current_user.posts.new(spot_params)
    if @post.save
      redirect_to spot_path(@post.id)
    else
      redirect_to spots_path
    end
  end

  def show
    @post = Post.find(params[:id])
    @lat = @post.spot.latitude
    @lng = @post.spot.longitude
    gon.lat = @lat
    gon.lng = @lng
  end

  def edit
  end

  def update
  end


  def destroy
  end

  private

  def spot_params
    params.require(:post).permit(:title, :caption, :image, :rate, spot_attributes: [:address])
  end

end
