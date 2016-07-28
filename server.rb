require 'sinatra'

get '/' do
  erb :home
end

get '/img/:num.png' do
  cache_control :public, max_age: 3600
  send_file "assets/#{params[:num]}.png"
end