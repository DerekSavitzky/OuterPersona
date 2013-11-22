class Order < ActiveRecord::Base
  attr_accessible :created_at, :customer_id, :gst_rate, :hst_rate, :id, :pst_rate, :status, :updated_at
  has_many :products
  has_many :lineitems
  
end
