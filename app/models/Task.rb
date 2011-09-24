require 'dm-core'
DataMapper.setup(:default, {
  :adapter => 'mysql',
  :host => 'localhost',
  :username => 'root',
  :password => '',
  :database => 'test'
})

class Task
  include DataMapper::Resource
  
  property :id, Serial
  property :done, Boolean
  property :command, String
end