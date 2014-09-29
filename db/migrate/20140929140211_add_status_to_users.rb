class AddStatusToUsers < ActiveRecord::Migration
  def change
    change_table(:users) do |t|
      t.column :status, :string
    end
  end
end
