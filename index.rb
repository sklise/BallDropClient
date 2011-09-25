require 'bundler'
Bundler.require
require 'net/telnet'
require 'socket'
require 'yaml'

@config = YAML::load(File.open('./config.yml'))
configure do |c|
  enable :sessions
  set :root, File.dirname(__FILE__)
  set :views, Proc.new{ File.join(root, "app/views")}
end

Dir['app/*/*.rb'].each {|file| require file}
