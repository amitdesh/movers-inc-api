class Destination < ApplicationRecord
  belongs_to :user
  has_many :destination_inventories
  has_many :destinations, through: :destination_inventories
end
