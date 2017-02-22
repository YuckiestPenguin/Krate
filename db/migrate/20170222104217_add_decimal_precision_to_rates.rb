class AddDecimalPrecisionToRates < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
      change_table :rates do |t|
        dir.up   { t.change :cost, :decimal, :precision => 10, :scale => 2 }
        dir.down { t.change :cost, :decimal }
      end
    end
  end
end
