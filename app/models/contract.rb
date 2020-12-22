class Contract < ApplicationRecord
  belongs_to :user
  belongs_to :recipient

  has_many_attached :photos
end
