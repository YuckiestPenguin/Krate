class Port < ApplicationRecord
<<<<<<< HEAD

=======
>>>>>>> parent of b4101f6... added csv upload for countries and ports
  belongs_to :shipment_type
  belongs_to :country
  has_many :origins, :class_name => 'Rate'
  has_many :destinations, :class_name => 'Rate'
<<<<<<< HEAD

  def shipment_type_name
    shipment_type.try(:name)
  end
  def shipment_type_name=(name)
    self.shipment_type = ShipmentType.where(:name => name).first_or_create
  end

  def country_country_code
    country.try(:country_code)
  end
  def country_country_code=(country_code)
    self.country = Country.where(:country_code => country_code).first_or_create
  end

  def self.import(file)
    #code
    CSV.foreach(file.path, headers: true) do |row|
      Port.create! row.to_hash
    end
  end


=======
>>>>>>> parent of b4101f6... added csv upload for countries and ports
end
