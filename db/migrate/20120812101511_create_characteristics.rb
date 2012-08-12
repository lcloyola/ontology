class CreateCharacteristics < ActiveRecord::Migration
  def change
    create_table :characteristics do |t|
      t.integer :descriptor_id
      t.integer :instance_id
      t.string :value

      t.timestamps
    end
  end
end
