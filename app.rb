require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/words')
# require('pry')


get ('/') do
  @list = Words.all()
  erb(:input)
end

post ('/') do

  word = params["new_word"]
  words = Words.new(word)
  words.save()
  @list = Words.all()
  erb(:input)
end


get ('/items/:id') do
  @word = Words.find(params[:id])
  # words = Words.new(params[:id])
  # @word = words
  # @list = Words.all
  # @image = @word.img_maker
  erb(:output)
end

get ('/link/:name') do
  @word = Words.new(params[:name])
  erb(:output)
end

post ('/define') do
  define = params["definition"]
  definition = Definition.new(define)
  definition.save()
  @definition_list = Definition.all()
  erb(:output)
end
  # @word = Words.find(params[:id])
  # add method too add reader too

  # words = Words.new(params[:id])
  # @list = Words.all
