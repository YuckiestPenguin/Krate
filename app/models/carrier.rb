class Carrier < ApplicationRecord
  belongs_to :carrier_type
  belongs_to :shipment_type
  has_many :rates, :class_name => 'Rate'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      carrier = find_by_id(row["id"])
      Carrier.create! row.to_hash
    end
  end

  def shipment_type_name
    shipment_type.try(:name)
  end

  def shipment_type_name=(name)
    self.shipment_type = ShipmentType.where(:name => name).first
  end

  def carrier_type_name
    carrier_type.try(:name)
  end

  def carrier_type_name=(name)
    self.carrier_type = CarrierType.where(:name => name).first
  end
end
