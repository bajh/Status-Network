class StatusController < WebsocketRails::BaseController

  def online
  end

  def update
    @user = current_user
    @new_status = @user.toggle_status
    if @user.save
      send_message :update_success, @new_status, namespace: :statuses
      @user.friends.each do |friend|
        data = {friend_name: current_user.screen_name, friend_id: current_user.id, status: @new_status}
        WebsocketRails[('u' + friend.id.to_s).to_sym].trigger(:friend_update, data)
      end
    else
      error = "An error occured while attempting to update your status"
      send_message :update_fail, error, namespace: :statuses
    end
  end

end