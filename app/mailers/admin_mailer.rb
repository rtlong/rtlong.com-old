class AdminMailer < ActionMailer::Base
  default from: 'from@example.com'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.admin.new_login.subject
  #
  def new_login
    @greeting = 'Hi'

    mail to: 'to@example.org'
  end
end
