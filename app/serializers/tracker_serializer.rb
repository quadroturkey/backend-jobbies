class TrackerSerializer < ActiveModel::Serializer
  attributes :title, :company, :description, :user_id, :application_date, :follow_up_date, :offer_received
end
