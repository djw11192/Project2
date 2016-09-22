class Order < ActiveRecord::Base
  has_many :order_products
  belongs_to :member
end
