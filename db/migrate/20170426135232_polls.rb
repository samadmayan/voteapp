class Polls < ActiveRecord::Migration[5.0]
  def change
  	create_table :polls do |t|
  		t.string :about
  	end

  end
end
