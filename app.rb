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
  # @item = Words.find(params[:id])
  words = Words.new(params[:id])
  @word = words
  # @list = Words.all
  @image = words.img_maker(@word.word)
  erb(:output)
end
get ('/new/:id') do
  @word = Words.find(params[:id])
  words = Words.new(params[:id])
  # words = Words.new(params[:id])
  # @list = Words.all
    @image = words.img_maker(Words.find(params[:id]).word)
  erb(:list_words)
end
