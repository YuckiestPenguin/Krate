class CreateExtraChargeRanges < ActiveRecord::Migration[5.0]
  def change
    create_table :extra_charge_ranges do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
