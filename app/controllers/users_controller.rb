class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :about, :update, :destroy]

  def index
    @users = User.all.order(id: :asc)
  end

  def show
  end

  def about
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user
    else
      render "edit", status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private

    def user_params
      params.require(:user).permit(:email, :username, :password, :first_name, :last_name)
    end

    def set_user
      @user = User.find_by(username: params[:username])
    end
end
