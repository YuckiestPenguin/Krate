class CarrierType < ApplicationRecord
  has_many :carriers
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      CarrierType.create! row.to_hash
    end
  end
end
