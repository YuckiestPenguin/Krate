class ShipmentCategory < ApplicationRecord
  belongs_to :shipment_type

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      ShipmentCategory.create! row.to_hash
    end
  end

  def shipment_type_name
    shipment_type.try(:name)
  end

  def shipment_type_name=(name)
    self.shipment_type = ShipmentType.where(:name => name).first
  end
end
