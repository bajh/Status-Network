class UserController < ApplicationController

  before_action :authenticate_user!

  def index
    @users = User.all_but(current_user)
  end

  def toggle_status
    @user = current_user
    @new_status = @user.toggle_status
    unless @user.save
      #Render errors
    end
  end

  def feed
    @friends = current_user.active_friends
  end

end