require 'sinatra'
require './models/user'

put '/update-description' do
  content_type :json
  email = params['email']
  description = params['description']

  if email.nil? || description.nil?
    status 400
    return { error: "Email or description parameter is missing" }.to_json
  end

  if User.update_description(email, description)
    status 200
    { message: "Description updated successfully" }.to_json
  else
    status 404
    { error: "User not found" }.to_json
  end
end
