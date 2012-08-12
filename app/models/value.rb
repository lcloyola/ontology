class Value < ActiveRecord::Base
  validates_presence_of :descriptor_id, :name
  attr_accessible :descriptor_id, :name
  belongs_to :descriptor
end

