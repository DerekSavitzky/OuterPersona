class Lineitem < ActiveRecord::Base
  attr_accessible :created_at, :id, :order_id, :price, :product_id, :quantity, :updated_at
  belongs_to :order
  
  validates :order_id, :price, :product_id, :quantity, presence: true
end
