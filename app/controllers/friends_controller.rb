class FriendsController < ApplicationController
  before_action :set_friendship, only: [:confirm, :delete]

  def request
    @friendship = Friendship.new(friendship_params)
  end

  def confirm
    if @friendship.update(friendship_status: true)
      redirect_to @friend
    else
      redirect_to @friend, status: :unpressable_entity
    end
  end

  def delete
    @friendship.delete
    redirect_to @user
  end

  private

    def friendship_params
      params.require(:friendship).permit(:user_id, :friend_id)
    end

    def set_friendship
      @friendship = Friendship.find_by(
        user_id: params[:friendship][:user_id],
        user_id: params[:friendship][:friend_id]
      )
      @user = User.find(@frienship.user_id)
      @friend = User.find(@frienship.friend_id)
    end
end
