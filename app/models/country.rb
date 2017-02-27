class Country < ApplicationRecord
  has_many :ports
<<<<<<< HEAD
  def self.import(file)
    #code
    CSV.foreach(file.path, headers: true) do |row|
      Country.create! row.to_hash
    end
  end

=======
>>>>>>> parent of b4101f6... added csv upload for countries and ports
end
