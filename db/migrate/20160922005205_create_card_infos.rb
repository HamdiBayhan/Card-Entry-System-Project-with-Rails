class CreateCardInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :card_infos do |t|
      t.integer :cardId

      t.timestamps
    end
  end
end
