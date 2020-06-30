# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Supplier.create!([
  {
    name: "Universal Supplier", email: "universal@gmail.com", phone_number: "877-2223"
  },
  {
    name: "LLC, LLC", email: "llcllc@lcc.com", phone_number: "221-3300"
  },
  {
    name: "Grain Barn Prints", email: "gbp@gmail.com", phone_number: "223-1234"
  }
])

Product.create!([
  {
    name: "Dual Headphone Adapter", price: 5.88, description: "With this headphone jack adapter, you can control music (volume up/ volume down/ pause/ next track), or answer telephone call as you wish; You can charge your iPhone when enjoying your music/ videos/ movies at the same time, and you don't need to worry about the battery of your iPhone runs out", supplier_id: 2
  },
  {
    name: "Animal Charging Cable Protector", price: 4.49, description: "Decoration and protection for your cables. Unicorn accessory help reinforce and protect your charger from damage.", supplier_id: 3
  }, 
  {
    name: "Monkey Lamp", price: 129.99,description: "Resin monkey lamp to light your bedroom, living room, or office space.", supplier_id: 1
  }
])

Image.create!([

{
  url: "https://images-na.ssl-images-amazon.com/images/I/51oPPdbyZiL._AC_SY355_.jpg",
  product_id: 1
} ,

{
  url: "https://www.claires.com/dw/image/v2/BBTK_PRD/on/demandware.static/-/Sites-master-catalog/default/dw4feeb122/images/hi-res/01523_1.jpg?sw=2000&sh=2000&sm=fit",
  product_id: 2
} ,

{
  url: "https://images-na.ssl-images-amazon.com/images/I/510erxf9b1L._AC_SL1143_.jpg",
  product_id: 3
} ,

{
  url: "https://images-na.ssl-images-amazon.com/images/I/510erxf9b1L._AC_SL1143_.jpg",
  product_id: 3
} ,

{
  url: "https://images-na.ssl-images-amazon.com/images/I/511entqSSDL._AC_SX466_.jpg",
  product_id: 3
}

])