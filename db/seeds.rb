Product.destroy_all
Supplier.destroy_all
Image.destroy_all
# Product.create!([
#   {name: "Tory Burch", price: "120.00", description: "Metallic Gold Flats", supplier_id:1},
#   {name: "Adidas NMD", price: "50.00", description: "Pastel NMD shoes",supplier_id:2 },
#   {name: "Stan Smith", price: "60.00", description: "White Casual Shoes", supplier_id:3}
# ])

Supplier.create!([
  {
  name:"Foot Locker", 
  email:"footlocker@gmail.com",
  phone:"800-780-8989"
  },
  {
  name:"Shoe Palace", 
  email:"shoepalace@gmail.com",
  phone:"800-123-0000"
  },
  {
  name:"Kicks", 
  email:"kicks@gmail.com",
  phone:"800-456-0009"
  }
  ])

# Image.create!([
#   {
#   url:"http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=55513360", 
#   product_id: 1
#   },
#   {
#   url:"https://s-media-cache-ak0.pinimg.com/236x/1f/15/a0/1f15a0f607ffbf6de434941b24f09dc2.jpg", 
#   product_id: 2
#   },
#   {
#   url:"http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=157100393", 
#   product_id: 3
#   },
#   {
#   url:"http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=123169891", 
#   product_id: 1
#   }
#   ])

# image: "http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=55513360"
# image: "https://s-media-cache-ak0.pinimg.com/236x/1f/15/a0/1f15a0f607ffbf6de434941b24f09dc2.jpg"
# image: "http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=157100393"