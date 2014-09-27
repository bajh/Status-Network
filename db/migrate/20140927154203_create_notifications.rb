class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.string :text
      t.integer :sender_id
      t.integer :recipient_id
      t.boolean :unread?

      t.timestamps
    end
  end
end
