require 'bundler'
Bundler.require(:default, ENV['RACK_ENV'])

use Rack::CanonicalHost, ENV['CANONICAL_HOST'] if ENV['CANONICAL_HOST']

require 'sprockets'
map '/assets' do
  sprockets = Sprockets::Environment.new
  sprockets.append_path 'assets/javascripts'
  sprockets.append_path 'assets/stylesheets'
  run sprockets
end

require './wwdchike'
run WWDCHike
