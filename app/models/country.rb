class Country < ApplicationRecord
  has_many :ports

  def self.import(file)
    #code
    CSV.foreach(file.path, headers: true) do |row|
      Country.create! row.to_hash
    end
  end


end
