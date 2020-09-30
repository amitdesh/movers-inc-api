class Destination < ApplicationRecord
  belongs_to :user
  has_many :destination_inventories
  has_many :inventories, through: :destination_inventories
end
