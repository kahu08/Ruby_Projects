require('sinatra')
  require('sinatra/reloader')
  require('./lib/coin_combination')
  also_reload('lib/**/*.rb')

  get('/') do
    erb(:index)
  end

  get('/change') do
    @change = params.fetch("cents").to_i.coin_combination()
    erb(:change)
  end
  
