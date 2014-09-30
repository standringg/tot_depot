class OrderNotifier < ActionMailer::Base
  default from: 'Greg Standring <standringg@gmail.com.com>'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.recieved.subject
  #
  def received(order)
    @order = order

    mail to: order.email, subject: 'Tour of Tauranga Entry'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.shipped.subject
  #
  def shipped(order)
    @order = order

    mail to: "standringg@gmail.com", subject: 'New Tour of Tauranga Entry'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.record.subject
  #
  def record(order)
   @order = order 
   
    mail to: "standringg@gmail.com", subject: 'New Tour of Tauranga Entry'

    mail to: "touroftauranga@gmail.com", subject: 'New Tour of Tauranga Entry'
  end
end
