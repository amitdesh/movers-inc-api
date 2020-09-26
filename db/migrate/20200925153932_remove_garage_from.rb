class RemoveGarageFrom < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :garage, :boolean
  end
end
