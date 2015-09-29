require 'rubygems'
require 'sinatra'
require 'sinatra/activerecord'
require 'haml'
require_relative '../twentyeyes_api/lib/read'

class Post < ActiveRecord::Base
end

class App < Sinatra::Base

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

  get '/archive' do
    haml :archive
  end
  
end
