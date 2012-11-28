class CreateMnemonicsTable < ActiveRecord::Migration

  def change
	create_table :mnemonics do |t|
	  t.text	:text
	  t.integer	:word_id

	  t.timestamps
	end
  end

end