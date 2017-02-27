class CreatePorts < ActiveRecord::Migration[5.0]
  def change
    create_table :ports do |t|
      t.string :name
      t.string :port_code
      t.references :shipment_type, foreign_key: true
      t.timestamps
    end
  end
end
