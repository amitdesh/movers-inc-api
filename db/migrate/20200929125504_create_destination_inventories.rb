class CreateDestinationInventories < ActiveRecord::Migration[6.0]
  def change
    create_table :destination_inventories do |t|
      t.integer :destination_id
      t.integer :inventory_id

      t.timestamps
    end
  end
end
