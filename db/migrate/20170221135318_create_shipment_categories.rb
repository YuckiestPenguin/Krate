class CreateShipmentCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :shipment_categories do |t|
      t.string :name
      t.references :shipment_type, foreign_key: true

      t.timestamps
    end
  end
end
