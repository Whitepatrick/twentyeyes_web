#\ -w -p 80
require 'sinatra'
require './lib/twentyeyes'

get '/' do
  @posts = Post.all(:order => [ :post_id.desc ])
  haml :index
end

get '/posts' do
  @posts = Post.all(:order => [ :post_id.desc ])
  haml :posts
end

get '/about_me' do
  haml :about_me
end

get '/contact' do
  haml :contact
end
