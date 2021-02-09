require 'sinatra'

get '/' do
  'Welp!'
end

get '/secret' do
  'Show!'
end

get '/cat' do
  # We're calling erb, a method from the templating system that ships with Ruby. We are asking it to render a file called index.erb from the folder views
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

set :session_secret, 'super secret'