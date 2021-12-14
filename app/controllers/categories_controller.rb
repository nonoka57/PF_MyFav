class CategoriesController < ApplicationController

  def create
    @category = current_user.categories.new(category_params)
    @category.save
    redirect_to user_path(current_user.id)
  end

  def index
    @user = User.find_by(params[:id])
    @category = Category.new
    @categories = @user.categories
  end

  def edit
    @user = User.find_by(params[:id])
    @category = Category.new
    @categories = @user.categories
    @edit = Category.find(params[:id])
  end

  def update
    @edit = Category.find(params[:id])
    if @edit.update(category_params)
      redirect_to user_path(current_user.id)
    else
      render :edit
    end
  end

  def destroy
    @categories = Category.find(params[:id])
    @categories.destroy
    redirect_to user_path(current_user.id)
  end


  private

  def category_params
    params.require(:category).permit(:name)
  end

end
