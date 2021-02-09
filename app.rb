require 'sinatra'

get '/' do
  'Welp!'
end

get '/secret' do
  'Show!'
end

get '/cat' do
  "<div style = 'border: 3px dashed red'>
    <img src='https://images2.minutemediacdn.com/image/upload/c_fill,g_auto,h_1248,w_2220/f_auto,q_auto,w_1100/v1555302439/shape/mentalfloss/russianbluehed.png'>
  </div>"
end

set :session_secret, 'super secret'