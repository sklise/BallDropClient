get "/" do
  @ip = Socket.gethostname
  erb :main
end

post "/info" do
  t = Task.new(:command => "i", :done => false)
  t.save
  redirect "/"
end

post "/connect" do
  t = Task.new(:command => "connect", :done => false)
  t.save
  redirect "/"
end

post "/right" do
  t = Task.new(:command => "r", :done => false)
  t.save
  redirect "/"
end

post "/left" do
  t = Task.new(:command => "l", :done => false)
  t.save
  redirect "/"
end

post "/up" do
  t = Task.new(:command => "u", :done => false)
  t.save
  redirect "/"
end

post "/down" do
  t = Task.new(:command => "d", :done => false)
  t.save  
  redirect "/"
end

post "/disconnect" do
  t = Task.new(:command => "x", :done => false)
  t.save
  redirect "/"
end