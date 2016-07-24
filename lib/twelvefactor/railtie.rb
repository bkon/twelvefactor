# frozen_string_literal: true
require "uri"

class Twelvefactor::Railtie < Rails::Railtie
  config.before_configuration do |app|
    ns = Twelvefactor::Environment
    ns.constants.each do |c|
      env_name = c.to_s.upcase + "_URL"
      env = ENV[env_name]
      ns.const_get(c).apply app, URI(env) if env.present?
    end
  end
end
