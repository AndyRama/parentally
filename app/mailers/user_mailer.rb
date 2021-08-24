class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.contact.subject
  #
  def contact
    @greeting = "Thank for subscribed !!"

    mail to: "to@example.org"
  end
end
