#\ -w -p 80
require 'sinatra'
require './app'

set :environment, :production
set :port, 80

run Sinatra::Application
