class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :current_address, :no_of_rooms, :house_SF
end
