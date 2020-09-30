class DestinationInventorySerializer < ActiveModel::Serializer
  attributes :id, :destination_id, :inventory_id, :count
  belongs_to :destination
  belongs_to :inventory
end
