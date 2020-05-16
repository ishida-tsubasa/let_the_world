# frozen_string_literal: true

class AddUserIdToChannels < ActiveRecord::Migration[5.0]
  def change
    add_column :channels, :user_id, :integer, null: false
    add_index :channels, :user_id
  end
end
