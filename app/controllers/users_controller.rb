class UsersController < ApplicationController
  def index
  	@users = User.all
  	@book = Book.new
    @user = current_user
  end

  def show
  	@user = User
    @books = Book.all
  	@book = Book.new
    @user = current_user
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      redirect_to user_path(user.id)
    else
      @user = user
      render "edit"
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
