class UserSerializer < ActiveModel::Serializer
  attributes :username, :trackers, :id
end
