require 'sinatra'
require './models/user'

delete '/delete_user' do
  content_type :json

  email = params['email'] 

  if email.nil? || email.empty?
    status 400
    return { error: "Email parameter is missing" }.to_json
  end

  if User.delete_user(email)
    status 200
    { message: "User account deleted successfully." }.to_json
  else
    status 404
    { error: "User not found." }.to_json
  end
end
