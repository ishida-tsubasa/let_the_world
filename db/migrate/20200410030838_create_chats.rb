# frozen_string_literal: true

class CreateChats < ActiveRecord::Migration[5.0]
  def change
    create_table :chats do |t|
      t.text :content
      t.timestamps
    end
    add_index :chats, :content
  end
end
