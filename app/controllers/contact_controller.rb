class ContactController < ApplicationController
  layout 'splash'
  def show
  end

  def mail
    redirect_to URI::MailTo.build(to: 'ryan+website@rtlong.com').to_s
  end
end
