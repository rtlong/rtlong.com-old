class AdminMailer < ActionMailer::Base
  default from: 'rtlong-com@rtlong.com'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.admin.new_login.subject
  #
  def new_login(request)
    @ip = request.host

    mail to: 'admin@rtlong.com'
  end
end
