require 'bundler'
Bundler.require
require 'net/telnet'

configure do |c|
  enable :sessions
  set :views, Proc.new{ File.join(root, "app/views")}
end

Dir['app/*/*.rb'].each {|file| require file}
