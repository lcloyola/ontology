class Instance < ActiveRecord::Base
  attr_accessible :name, :item_id
  belongs_to :item
  has_many :characteristics
end

