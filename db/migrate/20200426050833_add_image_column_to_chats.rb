# frozen_string_literal: true

class AddImageColumnToChats < ActiveRecord::Migration[5.0]
  def change
    add_column :chats, :image, :string
  end
end
