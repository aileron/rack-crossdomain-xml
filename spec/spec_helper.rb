ENV['RACK_ENV'] ||= 'test'

Bundler.require

require 'minitest/autorun'

require 'rack/crossdomain/xml'