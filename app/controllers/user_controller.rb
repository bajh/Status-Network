class UserController < ApplicationController

  before_action :authenticate_user!

  def index
    @users = User.all_but(current_user)
  end

  def feed
    @friends = current_user.active_friends
  end

end