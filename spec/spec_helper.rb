require_relative "../lib/omniauth/delivery.rb"
require 'bundler/setup'
require 'rspec'
require 'omniauth'

RSpec.configure do |config|
  config.extend  OmniAuth::Test::StrategyMacros, :type => :strategy
end