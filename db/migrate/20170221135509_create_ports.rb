class CreatePorts < ActiveRecord::Migration[5.0]
  def change
    create_table :ports do |t|
      t.string :name
      t.string :port_code
      t.integer :shipment_type_id, foreign_key: true
      t.integer :country_id, foreign_key: true

      t.timestamps
    end
  end
end
