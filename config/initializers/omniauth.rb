OmniAuth.config.on_failure do |env|
  exception = env['omniauth.error']
  error_type = env['omniauth.error.type']
  strategy = env['omniauth.error.strategy']

  Rails.logger.error("OmniAuth Error (#{error_type}): #{exception.inspect}")
  Airbrake.notify(exception) #, parameters: { strategy: strategy.inspect, error_type: error_type })

  new_path = "#{env['SCRIPT_NAME']}#{OmniAuth.config.path_prefix}/failure?message=#{error_type}"

  [302, {'Location' => new_path, 'Content-Type'=> 'text/html'}, []]
end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer if Rails.env.development?
  provider :github, ENV['omniauth_github_key'], ENV['omniauth_github_secret']
end

OmniAuth.config.logger = Rails.logger
