class FriendshipController < ApplicationController

  def request
    @friendship = Friendship.new(user_id: current_user.id, friend_id: params[:friend_id])
    @reciprocal_friendship = Friendship.new(user_id: params[:friend_id], friend_id: current_user.id)
    if @friendship.save && @reciprocal_friendship.save
      render json: @friendship
    else
      render json: { errors: @friendship.errors.full_messages }
    end
  end

end
