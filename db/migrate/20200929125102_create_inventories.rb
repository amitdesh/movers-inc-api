class CreateInventories < ActiveRecord::Migration[6.0]
  def change
    create_table :inventories do |t|
      t.integer :sofa
      t.integer :bed
      t.integer :desk
      t.integer :table
      t.integer :chair
      t.integer :boxes
      t.integer :appliances
      t.integer :plants
      t.integer :art

      t.timestamps
    end
  end
end
