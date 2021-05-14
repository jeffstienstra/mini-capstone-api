# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).

Supplier.create!(name: "DW", phone: "555-555-5678", email: "DW@example.com")

Supplier.create!(name: "Premier", phone: "556-555-5888", email: "Premier@example.com")

Product.create!(
  name: "DW Design Series",
  price: 1650,
  description: "Color: wood-grain. 5-piece Shell Pack with 10\" & 12\" Rack Toms, 16\" Floor Tom, 14\" Snare Drum and 22\" Bass Drum",
  quantity: 3,
  supplier_id: 2,
)

Product.create!(
  name: "DW Collector's Series",
  price: 4650,
  description: "Color: black. 5-piece Maple Shell Pack with 10\" & 12\" Toms, 14\" & 16\" Floor Toms and 22\" Bass Drum",
  quantity: 2,
  supplier_id: 1,
)

Product.create!(
  name: "DW Special Series",
  price: 3750,
  description: "Color: red. 4-piece Birch Shell Pack with 10\" & 12\" Toms, 14\" & 16\" Floor Toms and 22\" Bass Drum",
  quantity: 1,
  supplier_id: 1,
)

Product.create!(
  name: "DW Custom Series",
  price: 4995,
  description: "Color: sunburst. 6-piece Shell Pack with 10\" & 12\" Rack Toms, 16\" Floor Tom, 14\" Snare Drum and 22\" Bass Drum",
  quantity: 0,
  supplier_id: 2,
)

Image.create!(product_id: 1, url: "https://images.reverb.com/image/upload/s--V5KFpzg_--/f_auto,t_supersize/v1587860801/jiryixflpenossdgn9jk.jpg")
Image.create!(product_id: 1, url: "https://images.reverb.com/image/upload/s--yOXCdryk--/f_auto,t_supersize/v1587861247/fcxw6tknq0p8ryzcket9.jpg")
Image.create!(product_id: 2, url: "https://cdn.shopify.com/s/files/1/1422/9358/products/DW-DRUM-WORKSHOP-COLLECTORS-SERIES-MAPLE-MAHOGANY-6-PIECE-DRUM-KIT-DRUMAZON_01_1000x.jpg?v=1571775719")
Image.create!(product_id: 2, url: "https://cdn.shopify.com/s/files/1/1422/9358/products/DW-DRUM-WORKSHOP-COLLECTORS-SERIES-MAPLE-MAHOGANY-6-PIECE-DRUM-KIT-DRUMAZON_20_1000x.jpg?v=1571775719")
Image.create!(product_id: 3, url: "https://images.reverb.com/image/upload/s--I_6e1flv--/a_exif,c_limit,e_unsharp_mask:80,f_auto,fl_progressive,g_south,h_1600,q_80,w_1600/v1472692539/txcdxfs4axenw0mtyfqw.jpg")
Image.create!(product_id: 3, url: "https://images.reverb.com/image/upload/s--BTCxky-b--/a_exif,c_limit,e_unsharp_mask:80,f_auto,fl_progressive,g_south,h_1600,q_80,w_1600/v1472694639/wr7hd09t1awhiuj1v6fa.jpg")
Image.create!(product_id: 4, url: "https://cdn.shopify.com/s/files/1/0249/9600/products/1138505-1_1024x1024.jpg?v=1571264543")
Image.create!(product_id: 4, url: "https://cdn.shopify.com/s/files/1/0249/9600/products/1138505-2.jpg?v=1571264543")
Image.create!(product_id: 4, url: "https://cdn.shopify.com/s/files/1/0249/9600/products/1138505-5.jpg?v=1571264543")
