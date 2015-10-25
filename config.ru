#\ -w -p 80
require 'sinatra'
require './app'

set :bind, '0.0.0.0'
set :environment, :production
set :port, 80

run Sinatra::Application
