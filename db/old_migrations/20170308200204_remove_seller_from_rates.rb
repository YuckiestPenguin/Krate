class RemoveSellerFromRates < ActiveRecord::Migration[5.0]
  def change
    remove_column :rates, :seller, :string
  end
end
