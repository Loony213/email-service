require 'sinatra'
require 'json'
require_relative '../db/db'  # Ruta actualizada a la nueva ubicación de db.rb

put '/cambiar-password' do
  content_type :json

  begin
    data = JSON.parse(request.body.read)
    email = data['email']
    old_password = data['oldPassword']
    new_password = data['newPassword']

    if email.nil? || old_password.nil? || new_password.nil?
      status 400
      return { error: 'Missing data' }.to_json
    end

    result = DB_CLIENT.execute("SELECT * FROM users WHERE email = '#{email}' AND password = '#{old_password}'")
    if result.each.empty?
      status 401
      return { error: 'Invalid credentials' }.to_json
    end

    DB_CLIENT.execute("UPDATE users SET password = '#{new_password}' WHERE email = '#{email}'").do

    status 200
    { message: 'Password updated successfully' }.to_json

  rescue => e
    status 500
    { error: "Error: #{e.message}" }.to_json
  end
end
