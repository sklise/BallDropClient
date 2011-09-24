require 'dm-core'
DataMapper.setup(:default, 'sqlite:///Users/sklise/ITP/Understanding Networks/BallDropClient/db/data.db')

class Task
  include DataMapper::Resource
  
  property :id, Serial
  property :done, Boolean
  property :command, String
end