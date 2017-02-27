class Country < ApplicationRecord
  def self.import(file)
    #code
    CSV.foreach(file.path, headers: true) do |row|
      Country.create! row.to_hash
    end
  end

  has_many :ports, dependent: :destroy
end
