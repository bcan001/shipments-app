class AddBillingBox < ActiveRecord::Migration
  def change
  	add_column :shipments, :billing, :boolean, default: :false
  end
end
