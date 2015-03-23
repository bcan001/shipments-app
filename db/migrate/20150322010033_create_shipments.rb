class CreateShipments < ActiveRecord::Migration
  def change
    create_table :shipments do |t|
      t.string :shipper
      t.string :consignee
      t.string :masterbill
      t.string :housebill
      t.boolean :clearance
      t.integer :user_id
      t.date :eta
      t.date :ata
      t.boolean :dispatched
      t.string :pod

      t.timestamps null: false
    end
  end
end
