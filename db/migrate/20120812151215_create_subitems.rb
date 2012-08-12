class CreateSubitems < ActiveRecord::Migration
  def change
    create_table :subitems do |t|
      t.integer :relationship_id
      t.integer :parent_id
      t.integer :child_id

      t.timestamps
    end
  end
end
