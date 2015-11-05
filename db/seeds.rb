Category.destroy_all
User.destroy_all
Item.destroy_all
Trade.destroy_all

#User(email: string,[DEVISE STUFFF] , username: string, first_name: string,
#last_name: string, address_1: string, address_2: string, city: string,
#postcode: string, country: string, image: string)
u1 = User.create!(
  email: "rob@rob.com",
  username: "rob_wilson",
  password: "password",
  first_name: "Robert",
  last_name: "Wilson",
  address_1: "8 Epping Way",
  city: "London",
  postcode: "E4 7PB",
  country: "UK",
  image: "rob_user_image.jpg")

u2 = User.create!(
  email: "dave@hoff.com",
  username: "thehoff",
  password: "password",
  first_name: "David",
  last_name: "Hasselhoff",
  address_1: "The Beach",
  city: "Miami",
  postcode: "33109",
  country: "USA",
  image: "http://facehoff.herokuapp.com/300/300")

u3 = User.create!(
  email: "bill@murray.com",
  username: "theRealBill",
  password: "password",
  first_name: "Bill",
  last_name: "Murray",
  address_1: "B&B Lodge",
  address_2: "Punxsutawney",
  city: "Pennsylvania",
  postcode: "15767",
  country: "USA",
  image: "http://fillmurray.com/300/300")


# Set up the pre-defined categories
fashion = Category.create!(name: "fashion")
home = Category.create!(name: "home")
garden = Category.create!(name: "garden")
electronics = Category.create!(name: "electronics")
entertainment = Category.create!(name: "entertainment")
leisure = Category.create!(name: "leisure")
collectables = Category.create!(name: "collectables")
jewellery = Category.create!(name: "jewellery")
motors = Category.create!(name: "motors")
literature = Category.create!(name: "literature")

#Set up the items
#Item(name: string, description: string, condition: string, value: integer,
#user_id: integer, category_id: integer)
i1 = u1.items.create!(
  name: "Apple MacBook Pro",
  description: '15" screen, 250GB HDD. FAULTY TRACKPAD.',
  condition: "Like new",
  value: 400,
  category_id: electronics.id)

i2 = u1.items.create!(
  name: "The Matrix DVD",
  description: 'DVD of the popular Sci-Fi movie.',
  condition: "Used",
  value: 3,
  category_id: entertainment.id)

i3 = u2.items.create!(
  name: "The Hobbit",
  description: 'A first edition book of "The Hobbit" by J.R.R Tolkein',
  condition: "Used",
  value: 50,
  category_id: literature.id)

i4 = u2.items.create!(
  name: "Rover 25",
  description: 'Classic rover design! 150k miles, upto date MOT.',
  condition: "Used",
  value: 400,
  category_id: motors.id)

i5 = u3.items.create!(
  name: "Men's Jacket",
  description: 'Black leather jacket for Men, 40" chest size.',
  condition: "Like new",
  value: 60,
  category_id: fashion.id)

i6 = u3.items.create!(
  name: "nVidia 980GTX",
  description: 'Next-generation GPU from nVidia. 4GB memory.',
  condition: "Like new",
  value: 300,
  category_id: electronics.id)

# setting up test trades
# t1 = Trade.create!(sender_id: u3.id, receiver_id: u1.id, receiver_item_id: i1.id)
# t2 = Trade.create!(sender_id: u1.id, receiver_id: u2.id, receiver_item_id: i3.id)
