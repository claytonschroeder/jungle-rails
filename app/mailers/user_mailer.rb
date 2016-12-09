class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email(order, item, product)
    @order = order
    @item = item
    @product = product
    mail(to: 'clytn7@gmail.com', subject: "order number #{@order.id}")
  end
end
