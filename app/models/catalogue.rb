class Catalogue < ActiveRecord::Base
  attr_accessible :created_at, :description, :id, :name, :updated_at
  has_many :products
  
  validates :id, :description, :name, :created_at, :updated_at, presence: true
  
end
