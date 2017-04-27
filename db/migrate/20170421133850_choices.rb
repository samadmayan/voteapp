class Choices < ActiveRecord::Migration[5.0]
  def change
  	create_table :choices do |t|
  		t.integer :question_id
      t.string :title
      t.integer :counter, default: 0
      t.timestamps
    end
  end
end
