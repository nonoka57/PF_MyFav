class UsersController < ApplicationController

  def index
  end

  def show
    @user = User.find_by(params[:id])
    @category = Category.new
    @categories = @user.categories
  end

  def edit
  end

  def update
  end

end
