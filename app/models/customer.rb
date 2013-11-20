class Customer < ActiveRecord::Base
  attr_accessible :address, :city, :country, :created_at, :email, :first_name, :id, :last_name, :postal_code, :province_id, :updated_at
end
