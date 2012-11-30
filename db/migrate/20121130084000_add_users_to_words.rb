class AddUsersToWords < ActiveRecord::Migration

  def up
    add_column :words, :user_id, :integer
  end

  def down
  	remove_column :words, :user_id
  end

end