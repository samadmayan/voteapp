class Questions < ActiveRecord::Migration[5.0]
  def change
  	create_table :questions do |t|
  		t.string :title
  		t.integer :poll_id
  		t.timestamps
  	end
  end
end
