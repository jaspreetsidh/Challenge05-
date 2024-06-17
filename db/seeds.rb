# db/seeds.rb
require 'csv'

CSV.foreach(Rails.root.join('db', 'products.csv'), headers: true) do |row|
  category_name = row['Category']
  category = Category.find_or_create_by(name: category_name)

  Product.create!(
    title: row['Title'],
    description: row['Description'],
    price: row['Price'],
    stock_quantity: row['Stock quantity'],
    category: category
  )
end
