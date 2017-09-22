require('sinatra')
require('sinatra/reloader')
require('./lib/volunteer')
require('./lib/project')
require('pg')
require('pry')
also_reload('lib/**/*.rb')

DB = PG.connect({:dbname => "volunteer_tracker", :user => "postgres", :password => "Emendo2013"})

get('/') do
  erb(:index)
end

get('/projects') do
  @projects = Project.all()
  erb(:projects)
end

post('/projects') do
  name = params.fetch("name")
  project = Project.new({:name => name, :id => nil})
  project.save()
  @projects = Project.all()
  erb(:projects)
end

get('/volunteers') do
  erb(:volunteers)
end

post('/volunteers') do
  erb(:volunteers)
end
