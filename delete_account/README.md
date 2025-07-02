
# 📂 Delete Account Service

This folder contains the logic for the **Delete Account** functionality of the Email Service microservice. The service is built using **Ruby 3.2** with the **Sinatra** framework, and it provides an API endpoint to delete a user's account.

---

## 📌 Features

- 🗑️ **Delete User Account**: Allows users to delete their account permanently.
- 📡 **API Endpoint**: Exposes a RESTful endpoint (`PUT /delete-account`) to delete the user's account.
- 🔑 **Database Interaction**: Interacts with a SQL Server database to store and retrieve user information.
- 🛠️ **Controller and Model Design**: The logic is divided into a controller (`delete_account.rb`) and a model (`user.rb`) for easy maintenance and separation of concerns.
- 📦 **Dockerized**: The service is containerized using Docker for easy deployment and scalability.
- 🛡️ **Security**: Ensures that only authenticated users can delete their accounts.

---

## 🧩 Architecture

The **Delete Account** service follows a modular and scalable architecture using **Sinatra** for routing and handling HTTP requests. It interacts with a SQL Server database to manage user data and permanently delete user accounts. Here's an overview of the architecture:

1. **Controller Layer**:
   - **`controllers/delete_account.rb`**: This is where the main business logic for deleting the user account resides. It handles incoming requests, verifies user input, and communicates with the model to delete the account.

2. **Model Layer**:
   - **`models/user.rb`**: The user model interacts with the database to fetch user data and delete the user.

3. **Database Layer**:
   - **`db/db.rb`**: This file contains the logic for connecting to the SQL Server database. It uses the **TinyTDS** gem to interact with the database.

4. **Application Layer**:
   - **`services/app.rb`**: This file initializes the Sinatra application, sets up routes, and serves the application. It is the entry point for the service.

5. **Configuration**:
   - **`config.ru`**: The Rack configuration file that loads and runs the Sinatra application.

6. **Deployment**:
   - The service is containerized using Docker, allowing it to be easily deployed and scaled.

---

## 📁 Folder Structure

```
delete_account/
├── config.ru             # Rack configuration file
├── controllers/
│   └── delete_account.rb # Controller logic for deleting user account
├── db/
│   └── db.rb             # Database connection logic (using TinyTDS)
├── models/
│   └── user.rb           # User model handling user data and account deletion
└── services/
    └── app.rb            # Main application file that configures the service
```

### 📝 Description of Each File

- **`config.ru`**: This file contains the Rack configuration for setting up the Sinatra application.
- **`controllers/delete_account.rb`**: This is the controller responsible for the business logic of the account deletion functionality. It listens for requests, processes them, and calls the appropriate services or models.
- **`db/db.rb`**: This file manages the connection to the SQL Server database using the `TinyTDS` library.
- **`models/user.rb`**: This model represents the user in the system. It handles the logic of fetching user data from the database and deleting the account.
- **`services/app.rb`**: This is the main application file where the service is initialized, routes are configured, and the server is started.

## ⚙️ How It Works

1. **Database Connection**: 
   - The `db.rb` file manages the connection to the SQL Server database using the `TinyTDS` library.
   - This connection is used by the models to interact with the database.

2. **Delete Account Logic**: 
   - When a `PUT` request is sent to the `/delete-account` endpoint, the `delete_account.rb` controller processes the request. 
   - It retrieves the user details from the `user.rb` model and deletes the user account from the database.

3. **User Model**:
   - The `user.rb` model is used to fetch the user by ID and permanently delete the account.

4. **Application Configuration**: 
   - The `app.rb` file sets up the Sinatra application, configures routes, and starts the service.

## 🚀 How to Deploy

### Prerequisites

- **Docker**: Ensure Docker is installed on your machine.
- **Ruby 3.2**: Ensure you have Ruby 3.2 installed (or Docker will handle it inside the container).
- **Database**: Make sure you have access to a SQL Server that supports `TinyTDS`.

### Steps to Deploy

1. **Clone the repository**:
```bash
git clone https://github.com/loony213/email-service.git
cd email-service/delete_account
```

2. **Install dependencies** (inside the project folder):
```bash
bundle install
```

3. **Build the Docker image**:
```bash
docker build -t kamartinez/delete-account .
```

4. **Run the container**:
```bash
docker run -d -p 4567:4567 kamartinez/delete-account
```

   The service will be accessible at:  
   📍 `http://localhost:4567`

5. **Test the service**:
   - Use a tool like **Postman** or **curl** to send a `PUT` request to:
   ```bash
   PUT http://localhost:4567/delete-account
   ```
   - Include the user ID in the request body.

### Example Request:
```json
{
  "user_id": 1
}
```

### Example Response:
```json
{
  "status": "success",
  "message": "Account deleted successfully"
}
```

## 🔗 Endpoints

- **`PUT /delete-account`**: Delete user account. Requires user ID.
- **`GET /`**: Root test route: `"Ruby service running successfully"`

## 🛠️ Requirements

- Docker
- Internet access to install dependencies
- Ruby 3.2 and Bundler (inside container)
- Connection to a SQL Server (TinyTDS-compatible)

---

## 👤 Author

Developed by **Loony213**  
Image on Docker Hub: `kamartinez/delete-account
Part of the **Distribuida** system
