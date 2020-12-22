class User < ApplicationRecord
  has_many :contracts, dependent: :destroy

  has_one_attached :photo
end
