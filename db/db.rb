require 'tiny_tds'

DB_CLIENT = TinyTds::Client.new(
  username: 'admin',
  password: 'Distribuida123',
  host: 'auth-db.cny206g4cz8c.us-east-1.rds.amazonaws.com',
  database: 'auth_db'
)
