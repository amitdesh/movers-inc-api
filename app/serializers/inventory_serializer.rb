class InventorySerializer < ActiveModel::Serializer
  attributes :id, :sofa, :bed, :desk, :table, :chair, :boxes, :appliances, :plants, :art
  has_many :destinations
end
