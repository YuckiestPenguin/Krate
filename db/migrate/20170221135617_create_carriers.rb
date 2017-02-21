class CreateCarriers < ActiveRecord::Migration[5.0]
  def change
    create_table :carriers do |t|
      t.string :name
      t.references :carrier_type, foreign_key: true
      t.references :shipment_type, foreign_key: true

      t.timestamps
    end
  end
end
