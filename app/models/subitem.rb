class Subitem < ActiveRecord::Base
  validates_presence_of :child_id, :parent_id, :relationship_id
  validates_uniqueness_of :relationship_id, :scope => [:child_id, :parent_id]

  attr_accessible :child_id, :parent_id, :relationship_id
  belongs_to :relationship
  belongs_to :parent, :class_name => "Instance"
  belongs_to :child, :class_name => "Instance"

end

