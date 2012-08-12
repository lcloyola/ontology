class Characteristic < ActiveRecord::Base
  attr_accessible :descriptor_id, :instance_id, :value

  belongs_to :descriptor
  belongs_to :instance
end

