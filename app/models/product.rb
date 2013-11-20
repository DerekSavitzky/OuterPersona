class Product < ActiveRecord::Base
  attr_accessible :category_id, :created_at, :description, :id, :name, :price, :stock_quantity, :updated_at
end
