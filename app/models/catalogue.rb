class Catalogue < ActiveRecord::Base
  attr_accessible :created_at, :description, :id, :name, :updated_at
end
