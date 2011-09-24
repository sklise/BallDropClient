require 'dm-core'
require 'yaml'

config = YAML::load(File.open('config.yml'))
connection = config["local"]

DataMapper.setup(:default, {
  :adapter => 'mysql',
  :host => connection["host"],
  :username => connection["user"],
  :password => connection["password"],
  :database => connection["database"]
})

class Task
  include DataMapper::Resource
  
  property :id, Serial
  property :done, Boolean
  property :command, String
end