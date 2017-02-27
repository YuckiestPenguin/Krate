class ShipmentType < ApplicationRecord
  has_many :shipment_categories, dependent: :destroy
end
