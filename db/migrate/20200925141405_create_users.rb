class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :current_address
      t.integer :no_of_rooms
      t.integer :house_SF
      t.boolean :garage

      t.timestamps
    end
  end
end
