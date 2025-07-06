require 'sinatra'
require 'json'
require 'sinatra/cross_origin'

require_relative './controllers/delete_user'

configure do
  enable :cross_origin
  set :allow_origin, :any    
  set :allow_methods, [:get, :post, :put, :delete, :options]
  set :allow_headers, ['Content-Type', 'Authorization']
end

before do
  response.headers['Access-Control-Allow-Origin'] = '*'
  response.headers['Access-Control-Allow-Methods'] = 'GET, POST, PUT, DELETE, OPTIONS'
  response.headers['Access-Control-Allow-Headers'] = 'Content-Type, Authorization'
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
