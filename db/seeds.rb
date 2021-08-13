# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
  {
    email: 'test@gmail.com'
  }
])

subscriptions = Subscription.create([
  {
    product_url: 'amazon.com/product_1',
    start_price: 12.99,
    target_price: 10.00,
    is_subscribed: true,
    user: users.first
  },
  {
    product_url: 'amazon.com/product_2',
    start_price: 39.99,
    target_price: 25.50,
    is_subscribed: true,
    user: users.first
  },
  {
    product_url: 'amazon.com/product_3',
    start_price: 243.97,
    target_price: 243.96,
    is_subscribed: true,
    user: users.first
  }
])
