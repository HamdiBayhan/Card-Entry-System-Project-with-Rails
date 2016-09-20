class CreateSimulations < ActiveRecord::Migration[5.0]
  def change
    create_table :simulations do |t|
      t.integer :simId

      t.timestamps
    end
  end
end
