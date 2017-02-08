require('sinatra')
  require('sinatra/reloader')
  #requiring the .rb (backened)
  require('./lib/scrabble_score')
#refer to index file
  get('/') do
    erb(:index)
  end
#read the score file
get('/word') do
  @word = params.fetch('word').scrabble_score()
  erb(:score)
end
