class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.integer :cardId
      t.string :email
      t.string :name
      t.string :lastname
      t.string :confirm
      t.integer :useRate
      t.string :inside
      t.integer :entryDate
      t.string :memberDate
      t.string :imagePath

      t.timestamps
    end
  end
end
