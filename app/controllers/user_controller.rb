class UserController < ApplicationController

  before_action :authenticate_user!

  def index
    @users = User.all_but(current_user)
  end

  def feed
  end

end
