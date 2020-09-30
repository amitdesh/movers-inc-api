class DestinationSerializer < ActiveModel::Serializer
  attributes :id, :location, :date, :time, :user_id
  belongs_to :user
  has_many :destination_inventories
  has_many :inventories
end
