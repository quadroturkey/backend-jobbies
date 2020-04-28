class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: { case_sensative: false}
  has_many :trackers, dependent: :destroy 
  has_many :contacts, through: :trackers
  has_many :offers, through: :trackers
end
