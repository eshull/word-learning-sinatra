require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
# require('pry')

# gets all words in list
get ('/') do
  @list = Word.all()
  erb(:words)
end

# makes a new word on homepage
post ('/') do
  word = params["new_word"]
  word = Word.new(word)
  word.save()
  @list = Word.all()
  erb(:words)
end

# creates links for standard words
get ('/link/:id') do

  # @word = Word.find(params[:id])
  @word = Word.new(params[:id])
  @image = @word.img_maker
  # # @list = Word.all
  # @image = @word_img.img_maker
  erb(:word)
end

get ('/word/:id') do
  @word = Word.find(params[:id])
  @image = @word.img_maker
  # binding.pry
  erb(:word)
end
get ('/def_form') do
  @list = Word.all()
  erb(:words)
end

post ('/word/:id') do
  # @word = params["definition"]
  define = params["definition"]
  word = Word.new(define)
  @definition =word.definition(word)
  erb(:word)
end
  # @word = Word.find(params[:id])
  # add method too add reader too

  # word = Words.new(params[:id])
  # @list = Words.all
