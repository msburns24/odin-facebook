class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit]

  def index
    @users = User.all.order(id: :asc)
  end

  def show
  end

  def edit
  end

  private

    def set_user
      @user = User.find(params[:username])
    end
end
