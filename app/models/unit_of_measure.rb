class UnitOfMeasure < ApplicationRecord
  has_many :rates

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      UnitOfMeasure.create! row.to_hash
    end
  end
end
