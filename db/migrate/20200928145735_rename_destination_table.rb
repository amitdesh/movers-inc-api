class RenameDestinationTable < ActiveRecord::Migration[6.0]
  def change
    rename_column :destinations, :destinaton, :location
  end
end
