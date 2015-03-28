class Clearancedefault < ActiveRecord::Migration
  def change
  	change_table :shipments do |t|
  		t.change :clearance, :boolean, :default=>false
  		t.change :dispatched, :boolean, :default=>false
		end
  end
end
