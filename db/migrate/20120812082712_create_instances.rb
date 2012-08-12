class CreateInstances < ActiveRecord::Migration
  def change
    create_table :instances do |t|
      t.string :name
      t.integer :item_id

      t.timestamps
    end
  end
end

