# require 'bundler/setup'
# Bundler.require(:default, :development)
# $: << '.'
#
# Dir["lib/concerns/*.rb"].each {|f| require f}
# Dir["lib/models/*.rb"].each {|f| require f}
# Dir["lib/data_fetchers/*.rb"].each {|f| require_relative f}
# Dir["/lib/runner/*.rb"].each {|f| require_relative f}
#
require_relative '../lib/runner/weather_cli'
require_relative '../lib/data_fetchers/weather_adapter'
require_relative '../lib/models/weather'
require "rest-client"
require "open-uri"
require "json"
