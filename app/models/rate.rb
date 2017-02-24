class Rate < ApplicationRecord
  belongs_to :origin, :class_name => 'Port'
  belongs_to :destination, :class_name => 'Port'
  belongs_to :carrier
  belongs_to :shipment_category
  belongs_to :shipment_category
  belongs_to :unit_of_measure
  has_many :additional_items
end
