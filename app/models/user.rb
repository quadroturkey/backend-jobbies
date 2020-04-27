class User < ApplicationRecord
  has_secure_password
  validiates :username, uniqueness: { case_sensative: false}
end
