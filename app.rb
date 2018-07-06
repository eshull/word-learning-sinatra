require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/words')
# require('pry')

get '/hi' do
    "Hello World!"
end

get ('/') do
  # @list = Words.all()
  erb(:input)
end
get ('/items/duck') do
  "Hi there"
  # word = params["duck"]
  # words = Words.new(word)
  # words.save()
  # @list = Words.all()
  erb(:duck)
end

# get ('/items/:id') do
#   @item = Words.find(params[:id])
#   erb(:output)
# end
