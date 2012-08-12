class Item < ActiveRecord::Base
  validates_presence_of :name
  attr_accessible :name
  has_many :descriptors
  has_many :instances
end

