class DestinationSerializer < ActiveModel::Serializer
  attributes :id, :location, :date, :time, :user_id, :total_price, :related_inventory
  belongs_to :user
  has_many :destination_inventories
  has_many :inventories
end
