class Product < ActiveRecord::Base
  has_many :order_products

end

#@member.order = Order.create({plan: "plan1", frequency: "monthly"})
# @member.order.order_products.create({product: Product.find(), quantity: 1})
