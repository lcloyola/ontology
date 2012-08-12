class Characteristic < ActiveRecord::Base
  validates_presence_of :descriptor_id, :instance_id

  attr_accessible :descriptor_id, :instance_id, :value

  belongs_to :descriptor
  belongs_to :instance
end

