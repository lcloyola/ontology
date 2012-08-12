class CreateDescriptors < ActiveRecord::Migration
  def change
    create_table :descriptors do |t|
      t.string :name
      t.integer :item_id
      t.integer :datatype

      t.timestamps
    end
  end
end
