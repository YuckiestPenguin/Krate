class CreateShipmentTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :shipment_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
