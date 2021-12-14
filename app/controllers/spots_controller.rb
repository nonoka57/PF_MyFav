class SpotsController < ApplicationController

  def index
    @user = User.find_by(params[:id])
    @category = Category.new
    @categories = @user.categories
    @spot = Spot.new
  end

  def create
    @spot = current_user.spots.new(spot_params)
    if @spot.save
      redirect_to spot_path(@spot.id)
    else
      @user = User.find_by(params[:id])
      @category = Category.new
      @categories = @user.categories
      render :index
    end
  end

  def show
  end

  def edit
  end

  def update
  end


  def destroy
  end

  private

  def spot_params
    params.require(:spot).permit(:title, :caption, :image, :address, :rate)
  end

end
