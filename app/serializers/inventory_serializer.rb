class InventorySerializer < ActiveModel::Serializer
  attributes :id, :name, :price
  has_many :destination_inventories
  has_many :destinations, through: :destination_inventories
end
