require 'sinatra'
require 'json'
require 'tiny_tds'

post '/cambiar_email' do
  content_type :json
  data = JSON.parse(request.body.read)
  old_email = data['old_email']
  new_email = data['new_email']

  client = TinyTds::Client.new(
    username: 'admin',
    password: 'Distribuida123',
    host: 'auth-db.cny206g4cz8c.us-east-1.rds.amazonaws.com',
    port: 1433,
    database: 'auth_db'
  )

  result = client.execute("UPDATE users SET email = '#{new_email}' WHERE email = '#{old_email}'")
  result.do
  client.close

  { message: "Correo actualizado correctamente" }.to_json
end
