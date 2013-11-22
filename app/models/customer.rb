class Customer < ActiveRecord::Base
  attr_accessible :address, :city, :country, :created_at, :email, :first_name, :id, :last_name, :postal_code, :province_id, :updated_at
  belongs_to :province
  has_many :orders
  validates :address, :city, :country, :email, :first_name, :last_name, :postal_code, :province_id, presence: true
end
