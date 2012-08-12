class Instance < ActiveRecord::Base
  validates_presence_of :item_id, :name

  attr_accessible :name, :item_id
  belongs_to :item
  has_many :characteristics
end

