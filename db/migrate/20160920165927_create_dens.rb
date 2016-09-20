class CreateDens < ActiveRecord::Migration[5.0]
  def change
    create_table :dens do |t|
      t.integer :denId

      t.timestamps
    end
  end
end
