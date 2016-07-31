require 'sinatra'

get '/' do
  erb :home
end

get '/cv' do
  erb :cv
end

get '/img/:num.png' do
  cache_control :public, max_age: 3600
  send_file "assets/#{params[:num]}.png"
end

get '/photo.jpg' do
  cache_control :public, max_age: 3600
  send_file 'assets/photo.jpg'
end