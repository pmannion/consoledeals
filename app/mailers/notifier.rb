class Notifier < ActionMailer::Base

  default from:'mannion.paul@gmail.com'

  def confirm_order(current_user, order)
    @user = current_user
    @order = Order.find(order)
    mail(to: current_user.email, subject: "Thanks for shopping")
  end


end
