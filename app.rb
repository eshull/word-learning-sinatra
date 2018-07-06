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

# get ('/items/:id') do
#   @item = Words.find(params[:id])
#   @image = words.img_maker(@item.word)
#   erb(:input)
# end


get ('/items/:id') do
  @item = Words.find(params[:id])
  word = params["new_word"]
  words = Words.new(word)
  @image = words.img_maker(word)
  erb(:output)
end

# get ('/items/duck') do
#   # word = params["word"]
#   words = Words.new("duck")
#   @word = words
#   @image = words.img_maker(@word.word)
#   # word = params["duck"]
#   # words = Words.new(word)
#   # words.save()
#   # @list = Words.all()
#   erb(:duck)
# end


# get ('/items/:id') do
#   words = Words.new(params[:id])
#   @word = words
#   # @list = Words.all
#   @image = words.img_maker(@word.word)
#   erb(:output)
# end
