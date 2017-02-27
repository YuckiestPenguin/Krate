class CarrierType < ApplicationRecord
  has_many :carriers, dependent: :destroy
end
