
# 📂 Change Password Service

This folder contains the logic for the **Change Password** functionality of the Email Service microservice. The service is built using **Ruby 3.2** with the **Sinatra** framework, and it provides an API endpoint to update a user's password.

---

## 📌 Features

- 🔐 **Change Password**: Allows users to update their password securely.
- 📡 **API Endpoint**: Exposes a RESTful endpoint to change the user's password.
- 🔑 **Database Interaction**: Interacts with a SQL Server database to store and retrieve user information.
- 🛠️ **Controller and Model Design**: The logic is divided into a controller (`change_password.rb`) and a model (`user.rb`) for easy maintenance and separation of concerns.
- 📦 **Dockerized**: The service is containerized using Docker for easy deployment and scalability.
- 🛡️ **Security**: Ensures that only authenticated users can change their passwords.

---

## 🧩 Architecture

The **Change Password** service follows a modular and scalable architecture using **Sinatra** for routing and handling HTTP requests. It interacts with a SQL Server database to manage user data and securely update passwords. Here's an overview of the architecture:

1. **Controller Layer**:
   - **`controllers/change_password.rb`**: This is where the main business logic for changing the password resides. It handles incoming requests, verifies user input, and communicates with the model to update the password.

2. **Model Layer**:
   - **`models/user.rb`**: The user model interacts with the database to fetch user data and update the password securely.

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
change_password/
├── config.ru             # Rack configuration file
├── controllers/
│   └── change_password.rb # Controller logic for changing password
├── db/
│   └── db.rb             # Database connection logic (using TinyTDS)
├── models/
│   └── user.rb           # User model handling user data and password update
└── services/
    └── app.rb            # Main application file that configures the service
```

### 📝 Description of Each File

- **`config.ru`**: This file contains the Rack configuration for setting up the Sinatra application.
- **`controllers/change_password.rb`**: This is the controller responsible for the business logic of the password change functionality. It listens for requests, processes them, and calls the appropriate services or models.
- **`db/db.rb`**: This file manages the connection to the SQL Server database using the `TinyTDS` library.
- **`models/user.rb`**: This model represents the user in the system. It handles the logic of fetching user data from the database and updating the password.
- **`services/app.rb`**: This is the main application file where the service is initialized, routes are configured, and the server is started.

## ⚙️ How It Works

1. **Database Connection**: 
   - The `db.rb` file manages the connection to the SQL Server database using the `TinyTDS` library.
   - This connection is used by the models to interact with the database.

2. **Password Change Logic**: 
   - When a `PUT` request is sent to the `/change-password` endpoint, the `change_password.rb` controller processes the request. 
   - It retrieves the user details from the `user.rb` model, validates the password, and updates it in the database.

3. **User Model**:
   - The `user.rb` model is used to fetch the user by ID, validate the current password, and update the password to a new value.

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
git clone https://github.com/Loony213/email-service.git
cd email-service/change_password
```

2. **Install dependencies** (inside the project folder):
```bash
bundle install
```

3. **Build the Docker image**:
```bash
docker build -t kamartinez/change-password .
```

4. **Run the container**:
```bash
docker run -d -p 4567:4567 kamartinez/change-password
```

   The service will be accessible at:  
   📍 `http://localhost:4567`

5. **Test the service**:
   - Use a tool like **Postman** or **curl** to send a `PUT` request to:
   ```bash
   PUT http://localhost:4567/cambiar-password
   ```
   - Include the user ID and the new password in the request body.

### Example Request:
```json
{
  "user_id": 1,
  "current_password": "oldpassword123",
  "new_password": "newpassword123"
}
```

### Example Response:
```json
{
  "status": "success",
  "message": "Password updated successfully"
}
```
## 🛠️ Requirements

- Docker
- Internet access to install dependencies
- Ruby 3.2 and Bundler (inside container)
- Connection to a SQL Server (TinyTDS-compatible)

---

## 👤 Author

Developed by **Loony213**  
Image on Docker Hub: `kamartinez/change-password`  
Part of the **Distribuida** system
