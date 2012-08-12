class Item < ActiveRecord::Base
  attr_accessible :name
  has_many :descriptors
  has_many :instances
end

