class ChangeColumnSellerIdInRates < ActiveRecord::Migration[5.0]
  def change
    change_column :rates, :seller_id, :integer
  end
end
