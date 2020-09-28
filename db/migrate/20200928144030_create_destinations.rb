class CreateDestinations < ActiveRecord::Migration[6.0]
  def change
    create_table :destinations do |t|
      t.string :destinaton
      t.string :date
      t.string :time
      t.integer :user_id

      t.timestamps
    end
  end
end
