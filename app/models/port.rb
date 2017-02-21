class Port < ApplicationRecord
  belongs_to :shipment_type
  belongs_to :country
  has_many :origins, :class_name => 'Rate'
  has_many :destinations, :class_name => 'Rate'
end
