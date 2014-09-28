class UserController < ApplicationController

  before_action :authenticate_user!

  def feed
    @user = User.find(params[:id])
  end

end
