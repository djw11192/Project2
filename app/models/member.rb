class Member < ActiveRecord::Base
  has_secure_password
  has_many :orders
  has_many :products, through: :orders
end
