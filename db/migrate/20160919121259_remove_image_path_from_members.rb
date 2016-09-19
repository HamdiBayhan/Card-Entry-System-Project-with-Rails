class RemoveImagePathFromMembers < ActiveRecord::Migration[5.0]
  def change
    remove_column :members, :imagePath, :string
  end
end
