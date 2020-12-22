class Contract < ApplicationRecord
  belongs_to :user
  belongs_to :recipient

  has_many :payments, dependent: :destroy
  has_many :services, through: :contract_services

  has_many_attached :photos
end
