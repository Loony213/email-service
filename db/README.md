
# 🗄️ DB Folder

This folder contains the database connection logic for the `email-service` microservice. It encapsulates the configuration required to establish communication with a Microsoft SQL Server using the `tiny_tds` gem.

---

## 📌 Purpose

- Defines a global `DB_CLIENT` instance for executing SQL queries
- Manages connection parameters such as host, user, and password
- Centralizes DB connection logic for reuse across the app

---

## 📁 Files

```
db/
└── db.rb    # SQL Server connection using TinyTDS
```

---

## 🔧 db.rb

Example content:

```ruby
require 'tiny_tds'

DB_CLIENT = TinyTds::Client.new(
  host: 'auth-db.cny206g4cz8c.us-east-1.rds.amazonaws.com',
  database: 'auth_db'
)
```

> ⚠️ For production, it's strongly recommended to use environment variables instead of hardcoded credentials.

---

## 🧩 Integration

- Required by `controllers/` and `app.rb` using:
```ruby
require_relative '../db/db'
```

- Used to perform queries like `SELECT`, `UPDATE`, etc., via `DB_CLIENT.execute(...)`

---

## 👤 Author

Part of the `email-service` microservice  
Maintained by **Loony213**  
Project: **Distribuida**
