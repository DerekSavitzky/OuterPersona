class Product < ActiveRecord::Base
  attr_accessible :category_id, :created_at, :description, :id, :name, :price, :stock_quantity, :updated_at, :image
  belongs_to :category
  
  validates :name, :description, :price, :stock_quantity, :category_id, presence: true
  
end
