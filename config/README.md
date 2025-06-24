
# ⚙️ Config Folder

This folder contains the configuration files required to boot the `email-service` using Rack (Ruby web server interface).

---

## 📌 Purpose

- Provides startup instructions to the Rack server (`rackup`)
- Loads the main Sinatra application entry point (`app.rb`)
- Defines how the application is initialized

---

## 📁 Files

```
config/
└── config.ru    # Rack configuration file that runs app.rb
```

---

## 🔧 config.ru

A minimal `config.ru` typically includes:

```ruby
require './app'
run Sinatra::Application
```

This tells Rack to load `app.rb` and execute the main Sinatra application.

---

## 🧩 Integration

- Used automatically when the service is launched with:

```bash
bundle exec rackup --host 0.0.0.0 --port 4567
```

- Required by Rack to initialize the service correctly

---

## 👤 Author

Part of the `email-service` microservice  
Maintained by **Loony213**  
Project: **Distribuida**
