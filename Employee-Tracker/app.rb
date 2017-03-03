require('sinatra/activerecord')
require('sinatra')
require('sinatra/reloader')
require('./lib/division')
require('./lib/employee')
also_reload('lib/**/*.rb')
require("pg")

get('/') do
  @divisions = Division.all()
  erb(:index)
end

get('/divisions/new') do
  @divisions = Division.all()
  erb(:division_form)
end


post('/divisions') do
  division_name = params.fetch('division_name')
  division = Division.new({:division_name => division_name, :id => nil})
  division.save()
  @divisions = Division.all()
  erb(:success)
end

get('/divisions/:id') do
  @division = Division.find(params.fetch("id").to_i())
  erb(:division)
end

get '/divisions/:id/edit' do
  @division = Division.find(params.fetch("id").to_i())
  erb(:division_edit)
end

patch('/divisions/:id') do
  division_name = params.fetch('division_name')
  @division = Division.find(params.fetch("id").to_i())
  @division.update({:division_name => division_name})
  @divisions = Division.all()
  erb(:index)
end
