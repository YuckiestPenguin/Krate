class Carrier < ApplicationRecord
  belongs_to :carrier_type
  belongs_to :shipment_type
  has_many :rates, :class_name => 'Rate'
end
