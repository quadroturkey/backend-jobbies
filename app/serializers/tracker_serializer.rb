class TrackerSerializer < ActiveModel::Serializer
  attributes :title, :company, :description, :search_date, :start_date, :app_sent
end
