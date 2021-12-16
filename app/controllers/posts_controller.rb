class PostsController < ApplicationController

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    binding.pry
    if @post.save
      redirect_to spot_path(@post.id)
    else
      redirect_to spots_path
    end
  end

  def edit
  end

  def update
  end


  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :caption, :image, :rate, :category_id, spot_attributes: [:address])
  end


end
