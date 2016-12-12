class UserMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'

  def welcome_email(order, item, product)
    @order = order
    @item = item
    @product = product
    mail(to: 'clytn7@gmail.com', subject: "Order Number #{@order.id}")
  end
end
