require 'sinatra'
require 'json'
require 'sinatra/cross_origin'

require_relative './controllers/cambiar_email'
require_relative './controllers/cambiar_password'

configure do
  enable :cross_origin
end

before do
  response.headers['Access-Control-Allow-Origin'] = '*'
end

options '*' do
  response.headers['Access-Control-Allow-Origin'] = '*'
  response.headers['Access-Control-Allow-Methods'] = 'GET, POST, PUT, DELETE, OPTIONS'
  response.headers['Access-Control-Allow-Headers'] = 'Content-Type, Authorization'
  200
end

get '/' do
  'Ruby service running successfully'
end
