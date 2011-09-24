get "/" do
  @ip = Socket.gethostname
  erb :main
end

post "/:command" do
  t = Task.new(:command => params[:command], :done => false)
  t.save
  "command sent"
  redirect "/"
end