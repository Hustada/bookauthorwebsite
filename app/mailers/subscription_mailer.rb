class SubscriptionMailer < ActionMailer::Base
  default from: "notoquitelove.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.account_activation.subject
  #
  def subscription_activation(subscription)
    @subscription = subscription
    mail to: subscription.email, subject: "Thanks for Subscribing"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
end
