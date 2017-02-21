class Carrier < ApplicationRecord
  belongs_to :carrier_type
  belongs_to :shipment_type
end
