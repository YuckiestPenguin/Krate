class Port < ApplicationRecord
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      port = find_by_id(row["id"])
      Port.create! row.to_hash
    end
  end
  belongs_to :shipment_type
  belongs_to :country
  has_many :origins, :class_name => 'Rate'
  has_many :destinations, :class_name => 'Rate'


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
      self.country = Country.where(:country_code => country_code).first
    end




end
