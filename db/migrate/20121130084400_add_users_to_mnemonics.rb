class AddUsersToMnemonics < ActiveRecord::Migration

  def up
    add_column :mnemonics, :user_id, :integer
  end

  def down
  	remove_column :mnemonics, :user_id
  end

end