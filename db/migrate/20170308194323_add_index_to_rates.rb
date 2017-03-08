class AddIndexToRates < ActiveRecord::Migration[5.0]
  def change
    add_index :rates, :seller_id
  end
end
