class Inventory < ApplicationRecord
  has_many :destination_inventories
  has_many :destinations, through: :destination_inventories
  #   accepts_nested_attributes_for :inventory
end
