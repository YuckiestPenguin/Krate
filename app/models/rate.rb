class Rate < ApplicationRecord

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      rate = find_by_id(row["id"])
      Rate.create! row.to_hash
    end
  end

  belongs_to :origin, :class_name => 'Port'
  belongs_to :destination, :class_name => 'Port'
  belongs_to :seller, :class_name => 'Carrier'
  belongs_to :carrier
  belongs_to :shipment_category
  belongs_to :unit_of_measure
  belongs_to :commodity

# associatiing Origin and Destination Port Code
def origin_port_code
  origin.try(:port_code)
end

def origin_port_code=(port_code)
  self.origin = Port.where(:port_code => port_code).first
end

def destination_port_code
  destination.try(:port_code)
end

def destination_port_code=(port_code)
  self.destination = Port.where(:port_code => port_code).first
end

# associating carrier name
  def carrier_name
    carrier_name.try(:name)
    #code
  end

  def carrier_name=(name)
    self.carrier = Carrier.where(:name => name).first
    #code
  end

  def seller_name
    seller_name.try(:name)
    #code
  end
  def seller_name=(name)
    self.seller = Carrier.where(:name => name).first
    #code
  end




# associating Shipment Category Name
  def shipment_category_name
    shipment_category.try(:name)
  end

  def shipment_category_name=(name)
    self.shipment_category = ShipmentCategory.where(:name => name).first
  end



  # associating unit_of_measure name
  def unit_of_measure_name
    unit_of_measure.try(:name)
    #code
  end
  def unit_of_measure_name=(name)
    self.unit_of_measure = UnitOfMeasure.where(:name => name).first
    #code
  end


end
