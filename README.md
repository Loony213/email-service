
# 📧 Email Service

This microservice is part of the **Distribuida** system and handles user-related operations such as **email change** and **password updates**. It is built with Sinatra and communicates with a SQL Server database using TinyTDS.

---

## 📌 Features

- ✉️ Change user email
- 🔐 Update user password
- ✅ Basic Sinatra + REST structure
- 🧩 Connects to AWS-hosted SQL Server (RDS)

---

## 🧩 Architecture

- 🧱 Style: Independent microservice
- 🌐 API: REST (Sinatra)
- 💎 Language: Ruby 3.2
- 🐳 Containerized with Docker

---

## 📁 Project Structure

```
email-service/
├── app.rb                   # Main entry point
├── Dockerfile               # Docker build file
├── Gemfile                  # Ruby gem dependencies
│
├── config/
│   └── config.ru            # Rack configuration
│
├── controllers/
│   ├── cambiar_email.rb     # Change email logic
│   └── cambiar_password.rb  # Change password logic
│
└── db/
    └── db.rb                # Database connection using TinyTDS
```

---

## 🚀 How to Deploy

### 🐳 Using Docker

1. **Clone the repository**:

```bash
git clone https://github.com/your_user/email-service.git
cd email-service
```

2. **Build the Docker image**:

```bash
docker build -t kamartinez/ruby-email-service .
```

3. **Run the container**:

```bash
docker run -d -p 4567:4567 kamartinez/ruby-email-service
```

The service will be available at:  
📍 `http://localhost:4567`

---

## 🔗 Endpoints

- `PUT /cambiar-email` → Change user email
- `PUT /cambiar-password` → Update user password
- `GET /` → Root test route: `"Ruby service running successfully"`

---

## 🛠️ Requirements

- Docker
- Internet access to install dependencies
- Ruby 3.2 and Bundler (inside container)
- Connection to a SQL Server (TinyTDS-compatible)

---

## 👤 Author

Developed by **Loony213**  
Image on Docker Hub: `kamartinez/ruby-email-service`  
Part of the **Distribuida** system
