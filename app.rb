require 'sinatra'

get '/' do
  'Welp!'
end

# http://localhost:4567/secret
get '/secret' do
  'Show!'
end

get '/random-cat' do
  # We're calling erb, a method from the templating system that ships with Ruby. We are asking it to render a file called index.erb from the folder views
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

get '/named-cat' do
  # We're calling erb, a method from the templating system that ships with Ruby. We are asking it to render a file called index.erb from the folder views
  p params
  @name = params[:name]
  erb(:index)
end

set :session_secret, 'super secret'