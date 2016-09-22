class Member < ActiveRecord::Base
  has_secure_password
  has_one :order
end
