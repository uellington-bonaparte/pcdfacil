class User < ApplicationRecord
  has_many :contracts

  has_one_attached :photo
end
