class AddUserIdChannelIdChats < ActiveRecord::Migration[5.0]
  def change
        add_column :chats, :user_id, :integer, null: false
        add_column :chats, :channel_id, :integer, null: false
  end
end
