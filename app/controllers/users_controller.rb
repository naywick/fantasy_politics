class UsersController < ApplicationController

  before_action :find_user, only: [:edit, :update, :show]

  def index
    @users = User.all
  end

  def edit
  end

  def show
    authorize @user
  end

# create taken care of by devise
  # def create
  #   @user = User.new(user_params)
  #   if @user.save
  #     redirect_to user_path(@user)
  #   else
  #     render :new
  #   end
  # end
  # not sure if devise takes care of update???

  def update
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

private

  def find_user
   @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :password, :photo)
  end

end
