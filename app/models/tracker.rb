class Tracker < ApplicationRecord
  belongs_to :user
  has_many :contacts, dependent: :destroy
  has_one :offer, dependent: :destroy
end
