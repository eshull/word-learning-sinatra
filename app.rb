require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
require('pry')

# gets all words in list
get ('/') do
  Word.clear
  @word_list = Word.all()
  erb(:words)
end

# makes a new word and definition on homepage
post ('/') do
  word = params["new_word"]
  definition = params["definition"]
  word = Word.new(:word => word)
  word.definition_save(definition)
  word.save()
  @word_list = Word.all()
  erb(:words)
end

get ('/words/:id') do
  @word = Word.find(params[:id])
  @image = @word.img_maker
  erb(:word)
end

post ('/words/:id') do
  @word = Word.find(params[:id])
  @word = Word.find(params.fetch("add_definition"))
  define = params.fetch("definition")
  @word.definition_save(define)
  erb(:word)
end
