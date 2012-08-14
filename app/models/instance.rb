class Instance < ActiveRecord::Base
  validates_presence_of :item_id, :name

  attr_accessible :name, :item_id
  belongs_to :item
  has_many :characteristics

  has_many :subitems, :foreign_key => :parent_id, :dependent => :destroy
  has_many :parents, :through => :subitems, :source => :parent, :dependent => :destroy
  has_many :children, :through => :reverse_subitems, :source => :child, :dependent => :destroy
  has_many :reverse_subitems, :foreign_key => :child_id, :class_name => "Subitem", :dependent => :destroy

end

