require 'sinatra'
require 'json'
require_relative '../db/db'  # Cambiado para reflejar la nueva ubicación de db.rb

put '/cambiar-email' do
  content_type :json

  begin
    data = JSON.parse(request.body.read)
    old_email = data['oldEmail']
    new_email = data['newEmail']

    if old_email.nil? || new_email.nil?
      status 400
      return { error: 'Missing data' }.to_json
    end

    result = DB_CLIENT.execute("SELECT * FROM users WHERE email = '#{old_email}'")
    if result.each.empty?
      status 404
      return { error: 'User not found' }.to_json
    end

    DB_CLIENT.execute("UPDATE users SET email = '#{new_email}' WHERE email = '#{old_email}'").do

    status 200
    { message: 'Email updated successfully' }.to_json

  rescue => e
    status 500
    { error: "Error: #{e.message}" }.to_json
  end
end
