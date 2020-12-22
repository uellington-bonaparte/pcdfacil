class User < ApplicationRecord
  has_many :contracts, dependent: :destroy
  has_many :recipients, through: :contracts

  has_one_attached :photo
end
