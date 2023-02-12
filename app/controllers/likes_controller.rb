class LikesController < ApplicationController
  def create
    puts "\n=========================\n"
    puts params
    puts "\n=========================\n"
    puts like_params
    puts "\n=========================\n"

    @like = Like.create(like_params)
    if @like
      redirect_to root_url
    else
      redirect_back root_url, status: :unprocessable_entity
    end
  end

  def destroy
  end

  private

    def like_params
      params.require(:like).permit(:user_id, :likable_id, :likable_type)
    end
end
