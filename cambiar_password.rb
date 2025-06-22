require 'sinatra'
require 'json'
require_relative './db'

put '/cambiar-password' do
  content_type :json

  begin
    data = JSON.parse(request.body.read)
    email = data['email']
    old_password = data['oldPassword']
    new_password = data['newPassword']

    if email.nil? || old_password.nil? || new_password.nil?
      status 400
      return { error: 'Faltan datos' }.to_json
    end

    result = DB_CLIENT.execute("SELECT * FROM users WHERE email = '#{email}' AND password = '#{old_password}'")
    if result.each.empty?
      status 401
      return { error: 'Credenciales inválidas' }.to_json
    end

    DB_CLIENT.execute("UPDATE users SET password = '#{new_password}' WHERE email = '#{email}'").do

    status 200
    { message: 'Contraseña actualizada correctamente' }.to_json

  rescue => e
    status 500
    { error: "Error: #{e.message}" }.to_json
  end
end
