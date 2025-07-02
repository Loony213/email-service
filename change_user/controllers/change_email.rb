require 'sinatra'
require 'json'
require_relative '../services/user_service'

put '/change-email' do
  content_type :json
  data = JSON.parse(request.body.read)
  result = UserService.cambiar_email(data['oldEmail'], data['newEmail'])
  status result[:status]
  result[:body].to_json
end
