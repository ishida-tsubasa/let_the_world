class Channel < ApplicationRecord
    validates :channel, presence: { message: '名を正しく入力してください。' }
end
