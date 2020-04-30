class TrackerSerializer < ActiveModel::Serializer
  attributes :title, :company, :description, :user_id
end
