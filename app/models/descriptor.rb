class Descriptor < ActiveRecord::Base
  attr_accessible :datatype, :item_id, :name
  belongs_to :item
end

