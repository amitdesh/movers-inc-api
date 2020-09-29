class DestinationInventory < ApplicationRecord
    belongs_to :destination
    belongs_to :inventory
end
