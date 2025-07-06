require 'sinatra'
require './models/user'

put '/update-description' do
  content_type :json
  request_payload = JSON.parse(request.body.read)
  email = request_payload['email']
  description = request_payload['description']

  puts "Received email: #{email}, description: #{description}"  # Para depuración

  if email.nil? || description.nil? || email.empty? || description.empty?
    status 400
    return { error: "Email or description is missing" }.to_json
  end

  result = DB_CLIENT.execute("UPDATE users SET description = '#{description}' WHERE email = '#{email}'")

  if result
    status 200
    { message: "Description updated successfully." }.to_json
  else
    status 404
    { error: "User not found" }.to_json
  end
end
