class AddUsFlagToRates < ActiveRecord::Migration[5.0]
  def change
    add_column :rates, :us_flag, :boolean, default: false
  end
end
