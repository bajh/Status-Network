WebsocketRails::EventMap.describe do

  namespace :statuses do

    subscribe :online, 'status#online'

  end

end