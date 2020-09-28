class DestinationSerializer < ActiveModel::Serializer
  attributes :id, :location, :date, :time, :user_id
  # belongs_to :user
end
