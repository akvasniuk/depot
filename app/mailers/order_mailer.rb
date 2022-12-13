class OrderMailer < ApplicationMailer
  default from: 'Vegetables Shop <yorkgood4@gmail.com>'

  def received(order)
    @order = order

    mail to: order.email, subject: 'Vegetables Store Order Confirmation'
  end

  def shipped(order)
    @order = order

    mail to: order.email, subject: 'Vegetables Store Order shipped'
  end
end
