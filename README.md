
# 📧 Email Service

This Domain is part of the **Distribuida** system and handles user-related operations such as **email change** and **password updates**. It is built with Sinatra and communicates with a SQL Server database using TinyTDS.

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
├── .github/                 # GitHub workflows
│   └── workflows/           # Folder for CI/CD workflows
│       └── deploy-ruby-email.yml   # CI/CD pipeline file
├── change_password/         # Logic for changing user password
│   └── change_password.rb   # Ruby file for password change logic
├── change_user/             # Logic for changing user email
│   └── change_user.rb       # Ruby file for email change logic
├── delete_account/          # Logic for deleting user account
│   └── delete_account.rb    # Ruby file for account deletion logic
├── description/             # Service description
│   └── description.rb       # File providing description of the service
├── get_description/         # Logic to get the service description
│   └── get_description.rb   # Ruby file for fetching service description
└── README.md                # Project documentation
```

### Explanation of each folder and file:

- **`.github/`**: This folder contains the GitHub workflows for automating tasks like deployment. The `deploy-ruby-email.yml` file defines the CI/CD pipeline for this service.
- **`change_password/`**: Contains logic for updating user passwords. The `change_password.rb` file handles the password update process.
- **`change_user/`**: Contains the logic for changing the user's email address. The `change_user.rb` file is responsible for handling this operation.
- **`delete_account/`**: This folder contains the logic for deleting user accounts. The `delete_account.rb` file manages the deletion process.
- **`description/`**: This folder provides a general description of the service. The `description.rb` file contains the basic description text for the service.
- **`get_description/`**: This folder holds the logic for fetching and displaying the service description. The `get_description.rb` file is responsible for retrieving this information.
- **`README.md`**: This file provides an overview of the project, its functionality, setup, and requirements.


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
