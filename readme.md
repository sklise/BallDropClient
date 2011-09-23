host = Net::Telnet.new("Host" => "128.122.151.161", "Port" => 8080, "Timeout"=>25, "Output_log"=>"output_log.log", "Dump_log"=> "dump_log.log", "Prompt"=> /C:.*>/)

128.122.151.161 8080