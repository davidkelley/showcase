ENV['RACK_ENV'] ||= 'development'

require 'rubygems'
require 'bundler/setup'
require 'yajl/json_gem'
require 'rom-repository'

Bundler.require :default, ENV['RACK_ENV']

spec = "environments/#{ENV['RACK_ENV']}.rb"
require spec if File.exist? spec

Dir["#{File.expand_path("../initializers", __FILE__)}/**/*.rb"].each { |f| require f }
