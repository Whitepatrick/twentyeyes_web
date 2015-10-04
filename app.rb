require 'sinatra'
require './lib/twentyeyes'

get '/' do
  @posts = Post.all(:order => [ :post_id.asc ])
  haml :posts
end

=begin
get '/' do
  haml :posts
end

get '/about_me' do
  haml :about_me
end

get '/contact' do
  haml :contact
end

get '/posts' do
  haml :posts
end
=end
