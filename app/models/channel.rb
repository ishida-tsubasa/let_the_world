# frozen_string_literal: true

class Channel < ApplicationRecord
  validates :channel, presence: { message: '名を正しく入力してください' }
  validates :channel, uniqueness: { message: '名が重複しています' }

  has_many :chats
  belongs_to :user
end
