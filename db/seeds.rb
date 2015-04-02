# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




# t.string :shipper
# t.string :consignee
# t.string :masterbill
# t.string :housebill
# t.boolean :clearance
# t.integer :user_id
# t.date :eta
# t.date :ata
# t.boolean :dispatched
# t.string :pod

# t.timestamps null: false


User.create(username: "admin", password: "password")

Shipment.create(shipper: "HIAMS-HK", consignee: "HIAMS-HK", masterbill: "297-45454545", housebill: "VHF20182018", clearance: true, user_id: 1, eta: "2015-03-25", ata: "2015-03-25", dispatched: false, pod: "")
Shipment.create(shipper: "NSK CORP", consignee: "NSK CORP", masterbill: "205-20152015", housebill: "VHF20262026", clearance: true, user_id: 1, eta: "2015-03-27", ata: "2015-03-27", dispatched: false, pod: "")
Shipment.create(shipper: "NSK PRECISION", consignee: "NSK-PRECISION", masterbill: "607-59809382", housebill: "VHF20182019", clearance: true, user_id: 1, eta: "2015-03-26", ata: "2015-03-26", dispatched: false, pod: "")
Shipment.create(shipper: "KYOSAN", consignee: "KYOSAN", masterbill: "933-60158454", housebill: "VHF20987854", clearance: true, user_id: 1, eta: "2015-03-27", ata: "2015-03-27", dispatched: false, pod: "")
Shipment.create(shipper: "DIAMOND", consignee: "DIAMOND", masterbill: "297-20152014", housebill: "VHF20620987", clearance: true, user_id: 1, eta: "2015-03-25", ata: "2015-03-25", dispatched: false, pod: "")
Shipment.create(shipper: "TOYOTA TSUSHO", consignee: "TOYOTA TSUSHO", masterbill: "933-60158454", housebill: "VHF20192019", clearance: true, user_id: 1, eta: "2015-03-26", ata: "2015-03-26", dispatched: false, pod: "")
Shipment.create(shipper: "HIAMS-BK", consignee: "HIAMS-BK", masterbill: "933-60158454", housebill: "VHF20182021", clearance: true, user_id: 1, eta: "2015-03-27", ata: "2015-03-27", dispatched: false, pod: "")
Shipment.create(shipper: "HIAMS-HK", consignee: "HIAMS-HK", masterbill: "297-45454545", housebill: "VHF20182020", clearance: true, user_id: 1, eta: "2015-03-25", ata: "2015-03-25", dispatched: false, pod: "")
Shipment.create(shipper: "HIAMS-HK", consignee: "HIAMS-HK", masterbill: "297-45454545", housebill: "VHF20182022", clearance: true, user_id: 1, eta: "2015-03-25", ata: "2015-03-25", dispatched: false, pod: "")
Shipment.create(shipper: "HIAMS-HK", consignee: "HIAMS-HK", masterbill: "297-45454545", housebill: "VHF20182023", clearance: true, user_id: 1, eta: "2015-03-25", ata: "2015-03-25", dispatched: false, pod: "")



