require 'sinatra'
require 'json'
require 'sinatra/cross_origin'

require_relative './db/db'                     # db.rb ahora está en /db
require_relative './controllers/cambiar_email' # cambiar_email.rb ahora está en /controllers
require_relative './controllers/cambiar_password' # cambiar_password.rb ahora está en /controllers

# Configura CORS
configure do
  enable :cross_origin
end

before do
  response.headers['Access-Control-Allow-Origin'] = '*'
end

# Respuesta a preflight OPTIONS
options '*' do
  response.headers['Access-Control-Allow-Origin'] = '*'
  response.headers['Access-Control-Allow-Methods'] = 'GET, POST, PUT, DELETE, OPTIONS'
  response.headers['Access-Control-Allow-Headers'] = 'Content-Type, Authorization'
  200
end

# Ruta raíz de prueba
get '/' do
  'Ruby service running successfully'
end
