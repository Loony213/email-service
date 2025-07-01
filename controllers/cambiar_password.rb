require 'sinatra'
require 'json'
require_relative '../services/user_service'

put '/cambiar-password' do
  content_type :json
  data = JSON.parse(request.body.read)
  result = UserService.cambiar_password(data['email'], data['oldPassword'], data['newPassword'])
  status result[:status]
  result[:body].to_json
end
