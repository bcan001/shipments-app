class Archive < ActiveRecord::Migration
  def change
  	add_column :shipments, :archive, :boolean, default: :false
  end
end
