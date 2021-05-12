# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).

Product.create!(
  name: "DW Design Series",
  price: 1650,
  url: "https://www.drumcenternh.com/media/catalog/product/cache/1/thumbnail/460x460/9df78eab33525d08d6e5fb8d27136e95/d/w/dw-collectors-maple-vlt-333-5pc-drum-set-candy-black-burst-over-monkey-pod-w_black-nickel-hw-.jpg",
  description: "5-piece Shell Pack with 10\" & 12\" Rack Toms, 16\" Floor Tom, 14\" Snare Drum and 22\" Bass Drum",
  quantity: 3,
  supplier_id: 2,
)

Product.create!(
  name: "DW Collector's Series",
  price: 4650,
  url: "https://www.drumcenternh.com/media/catalog/product/d/w/dw-performance-5pc-2-up_2-down-drum-set-ebony-stain-front-.jpg",
  description: "5-piece Maple Shell Pack with 10\" & 12\" Toms, 14\" & 16\" Floor Toms and 22\" Bass Drum",
  quantity: 2,
  supplier_id: 1,
)

Product.create!(
  name: "DW Collector's Series",
  price: 3750,
  url: "https://i.pinimg.com/originals/22/7b/af/227baf2aef64cdcb581e89f2a7bcf426.jpg",
  description: "4-piece Birch Shell Pack with 10\" & 12\" Toms, 14\" & 16\" Floor Toms and 22\" Bass Drum",
  quantity: 1,
  supplier_id: 1,
)

Product.create!(
  name: "DW Custom Series",
  price: 4995,
  url: "https://pbs.twimg.com/media/BXHcFR-CMAAAmHB.jpg",
  description: "6-piece Shell Pack with 10\" & 12\" Rack Toms, 16\" Floor Tom, 14\" Snare Drum and 22\" Bass Drum",
  quantity: 0,
  supplier_id: 2,
)

Supplier.create!(
  name: "DW",
  phone: "555-555-5678",
  email: "DW@example.com",
)

Supplier.create!(
  name: "Premier",
  phone: "556-555-5888",
  email: "Premier@example.com",
)
