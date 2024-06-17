# app/models/product.rb
class Product < ApplicationRecord
  belongs_to :category
end
