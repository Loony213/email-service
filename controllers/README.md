
# 🧩 Controllers Folder

This folder contains the main route handlers for the `email-service` microservice. Each file defines specific endpoint logic for handling user-related actions.

---

## 📌 Purpose

- Groups core functionality such as changing email and password
- Keeps logic modular and separated by responsibility
- Mounted in the main application through `app.rb`

---

## 📁 Files

```
controllers/
├── cambiar_email.rb       # Handles PUT /cambiar-email
└── cambiar_password.rb    # Handles PUT /cambiar-password
```

---

## 🔧 How it works

Each file:

- Uses Sinatra DSL to define a route (`put '/...'`)
- Reads and parses incoming JSON requests
- Connects to the SQL Server via `TinyTDS` (using `DB_CLIENT`)
- Returns a JSON response with appropriate HTTP status codes

---

## 🧩 Integration

These controllers are required in `app.rb` and are automatically mounted when the application boots via Rack.

Example:

```ruby
require_relative './controllers/cambiar_email'
require_relative './controllers/cambiar_password'
```

---

## 👤 Author

Part of the `email-service` microservice  
Maintained by **Loony213**  
Project: **Distribuida**
