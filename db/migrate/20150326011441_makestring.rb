class Makestring < ActiveRecord::Migration
  def change
  	change_column :shipments, :user_id, :string
  end
end
