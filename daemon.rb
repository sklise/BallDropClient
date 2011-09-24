require 'net/telnet'
require 'app/models/Task.rb'

@host = Net::Telnet.new("Host" => "128.122.151.161", "Port" => 8080, "Timeout"=>25, "Output_log"=>"output_log.log", "Dump_log"=> "dump_log.log", "Prompt"=> /C:.*>/)

while true do

  t = Task.first(:done => false)

  if t
    if t.command == "connect"
      @host = Net::Telnet.new("Host" => "128.122.151.161", "Port" => 8080, "Timeout"=>25, "Output_log"=>"output_log.log", "Dump_log"=> "dump_log.log", "Prompt"=> /C:.*>/)
    else
      @host.puts(t.command)
    end

    t.done = true
    t.save
  end
end