class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :about]

  def index
    @users = User.all.order(id: :asc)
  end

  def show
  end

  def about
  end

  def edit
  end

  private

    def set_user
      @user = User.find_by(username: params[:username])
    end
end
