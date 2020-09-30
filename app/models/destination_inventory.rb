class DestinationInventory < ApplicationRecord
  belongs_to :destination
  belongs_to :inventory
  validates :count, numericality: { allow_blank: true }
  validates :destination_id, numericality: { allow_blank: true }
  validates :inventory_id, numericality: { allow_blank: true }
  accepts_nested_attributes_for :inventory

  def self.create_all(params)
    destination = Destination.create(location: params['nested_array'][0]['destination']['location'], time: params['nested_array'][0]['destination']['time'], date: params['nested_array'][0]['destination']['date'], user_id: params['nested_array'][0]['destination']['user_id'])
    dest_inventory_array = params['nested_array'][1]['invent'].each do |key, value|
      DestinationInventory.create(destination_id: destination.id, inventory_id: key.to_i, count: value.to_i)
    end
    destination
    end

#   def total_price
#     related_dest_inv = DestinationInventory.all.select { |dest_inv| dest_inv.destination_id === id }
#     total_price = related_dest_inv.sum { |dest_inv| dest_inv.count * dest_inv.inventory.price }
#   end
end
