require 'tiny_tds'

DB_CLIENT = TinyTds::Client.new(
  username: 'admin',
  password: 'Distribuida123',
  host: 'auth-db.cnck2sieyjue.us-east-1.rds.amazonaws.com',
  database: 'auth_db'
)
