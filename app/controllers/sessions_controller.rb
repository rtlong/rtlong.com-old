class SessionsController < ApplicationController

  protect_from_forgery except: :create

  def create
    if Rails.configuration.allowed_users.any? { |provider, uid| provider.to_s.match(auth_hash.provider) and uid.match(auth_hash.uid) }
      session[:user] = auth_hash.uid
      redirect_to :root, notice: 'Authenticated successfully.'
      AdminMailer.new_login(request).deliver
    else
      redirect_to :root
    end
  end

  def destroy
    reset_session
    redirect_to :root, notice: 'Session destroyed.'
  end

  def failure
    redirect_to :root, error: params[:message]
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end

end
