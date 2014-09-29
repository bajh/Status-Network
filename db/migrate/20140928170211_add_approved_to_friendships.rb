class AddApprovedToFriendships < ActiveRecord::Migration
  def change
    change_table(:friendships) do |t|
      t.column :approved?, :boolean
    end
  end
end