class AddScreenNameAndLocationToUsers < ActiveRecord::Migration
  def change
    change_table(:users) do |t|
      t.column :screen_name, :string, limit: 18
      t.column :location, :string
    end
  end
end
