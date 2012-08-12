class Descriptor < ActiveRecord::Base
  validates_presence_of :item_id

  attr_accessible :datatype, :item_id, :name
  belongs_to :item
  has_many :values
  has_many :characteristics
end

