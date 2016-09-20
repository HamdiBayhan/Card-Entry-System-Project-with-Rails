class RemoveMemberDateFromMembers < ActiveRecord::Migration[5.0]
  def change
    remove_column :members, :memberDate, :string
  end
end
