class Subitem < ActiveRecord::Base
  attr_accessible :child_id, :parent_id, :relationship_id
end
