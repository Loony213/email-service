require 'sinatra'
require './models/user'
require_relative '../db/db'

get '/get-description' do
  email = params['email']
  if email.nil? || email.empty?
    status 400
    return { error: "Email is missing" }.to_json
  end

  result = DB_CLIENT.execute("SELECT description FROM users WHERE email = '#{email}'")
  if result.count > 0
    status 200
    { description: result.first['description'] }.to_json
  else
    status 404
    { error: "User not found" }.to_json
  end
end

