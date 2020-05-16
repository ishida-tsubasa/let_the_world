# frozen_string_literal: true

class Chat < ApplicationRecord
  belongs_to :channel
  belongs_to :user

  default_scope -> { order(created_at: :desc) }

  mount_uploader :image, ImageUploader
end
