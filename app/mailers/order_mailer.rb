class OrderMailer < ApplicationMailer
  default from: 'Sam ruby <depot@example.com>'

  def received(order)
    @order = order

    mail to: order.email, subject: 'Vegetables Store Order Confirmation'
  end

  def shipped(order)
    @order = order

    mail to: order.email, subject: 'Vegetables Store Order shipped'
  end
end
