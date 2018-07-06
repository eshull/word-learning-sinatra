require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/words')
require('pry')



get ('/') do
  @list = Things.all()
  erb(:list)
end
post ('/') do
  food = params["food"]
  things = Things.new(food)
  things.save()
  @list = Things.all()
  erb(:list)
end

get ('/items/:id') do
  @item = Things.find(params[:id])
  erb(:output)
end
