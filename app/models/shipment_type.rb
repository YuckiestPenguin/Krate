class ShipmentType < ApplicationRecord
  has_many :shipment_categories
end
