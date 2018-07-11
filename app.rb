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
  @word = Word.new(params[:id])
  @image = @word.img_maker
  erb(:word)
end

get ('/word/:id') do
  @word = Word.find(params[:id])
  @image = @word.img_maker
  erb(:word)
end

get ('/def_form') do
  @list = Word.all()
  erb(:word)
end

post ('/word/:id') do
  define = params["definition"]
  @def.definition_save(define)
  word = Word.new(define)
  @definition =word.definition(word)
  erb(:word)
end
