class Value < ActiveRecord::Base
  attr_accessible :descriptor_id, :name
  belongs_to :descriptor
end

