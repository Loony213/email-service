require 'sinatra'
require 'json'
require 'sinatra/cross_origin'

require_relative './db'
require_relative './cambiar_email'
require_relative './cambiar_password'

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
  'Servicio Ruby funcionando correctamente'
end
