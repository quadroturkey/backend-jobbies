class UserSerializer < ActiveModel::Serializer
  attributes :username, :avatar, :bio, :trackers
end
