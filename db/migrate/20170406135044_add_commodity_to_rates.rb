class AddCommodityToRates < ActiveRecord::Migration[5.0]
  def change
    add_reference :rates, :commodity, foreign_key: true
  end
end
