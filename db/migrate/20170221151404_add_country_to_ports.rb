class AddCountryToPorts < ActiveRecord::Migration[5.0]
  def change
    add_reference :ports, :country, foreign_key: true
  end
end
