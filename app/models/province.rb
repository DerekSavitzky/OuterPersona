class Province < ActiveRecord::Base
  attr_accessible :created_at, :gst, :hst, :id, :name, :pst, :updated_at
  has_many :customers
  validates :name, presence: true
end
