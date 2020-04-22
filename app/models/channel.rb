class Channel < ApplicationRecord
  validates :channel, presence: { message: '名を正しく入力してください' }
  validates :channel, uniqueness: { message: '名が重複しています' }

  belongs_to :user
  has_many  :chates
end
