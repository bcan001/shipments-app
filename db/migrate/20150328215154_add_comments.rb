class AddComments < ActiveRecord::Migration
  def change
  	add_column :shipments, :comments, :text
  end
end
