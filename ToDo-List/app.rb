require("sinatra/activerecord")
require('sinatra')
require('sinatra/reloader')
require('./lib/tasks')
require('./lib/list')
also_reload('lib/**/*.rb')
require("pg")



get("/") do
  @lists = List.all()
  erb(:index)
end

get('/lists') do
  @lists = List.all()
  erb(:list)
end

post("/lists") do
  name = params.fetch("name")
  list = List.new({:name => name, :id => nil})
  list.save()
  @lists = List.all()
  erb(:list_success)
end


get("/lists/:id") do
  @list = List.find(params.fetch("id").to_i())
  erb(:list)
end

post("/tasks") do
  description = params.fetch("description")
  list_id = params.fetch("list_id").to_i()
  @task = Task.new({:description => description, :list_id => list_id})
  task.save()
  @list = List.find(list_id)
  erb(:task_success)
end
