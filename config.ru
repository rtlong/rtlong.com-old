# This file is used by Rack-based servers to start the application.
require 'rack/canonical_host'
require ::File.expand_path('../config/environment',  __FILE__)

#use Rack::CanonicalHost, 'rtlong.com', if: %w[ www.rtlong.com rtlong.herokuapp.com ]
#use Rack::CanonicalHost, 'stage.rtlong.com', if: %w[ www.stage.rtlong.com rtlong-stage.herokuapp.com ]
use Rack::CanonicalHost, nil, if: /\Awww\.|\.herokuapp\.com\z/ do
  case ENV['RAILS_ENV'].to_sym
  when :stage then 'stage.rtlong.com'
  when :production then 'rtlong.com'
  end
end

run RtlongCom::Application
