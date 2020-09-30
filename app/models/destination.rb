class Destination < ApplicationRecord
  belongs_to :user
  has_many :destination_inventories
  has_many :inventories, through: :destination_inventories

  def total_price
    related_dest_inv = DestinationInventory.all.select { |dest_inv| dest_inv.destination_id === id }
    total_price = related_dest_inv.sum { |dest_inv| dest_inv.count * dest_inv.inventory.price }
  end

  def related_inventory
    move_inv = DestinationInventory.all.select { |dest_inv| dest_inv.destination_id === id }
    move_array = []
    move_inv.map do |item|
      x = { 'name' => item.inventory.name, 'amount' => item.count }
      move_array.push(x)
    end
    move_array
  end
end
