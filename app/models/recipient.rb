class Recipient < ApplicationRecord
  has_many :contracts, dependent: :nullify
end
