
# Change Password Microservice 🔑

This microservice is part of the **Email Service** domain and is responsible for handling user password change requests. It provides functionality for securely changing the password of a user's email account.

## Repository Link 📁
- [GitHub Repository](https://github.com/Loony213/email-service)

## Docker Image 🐳
- **Docker Image:** `kamartinez/change_password`

## Purpose 🎯
The **Change Password** microservice enables users to securely change their email account password. This service ensures that the password change process is handled efficiently and securely.

## Architecture Style 🏗️
- **Microservice Architecture:** This service is designed as a standalone microservice that focuses specifically on password management.
- **Design Pattern:** The service follows the **MVC (Model-View-Controller)** design pattern, where the model handles the data structure (user), the controller manages the flow of data, and the service contains the business logic for password changing.

## Technologies 💻
- **Programming Language:** Ruby
- **Containerization:** Docker (optional)
- **API Integration:** REST APIs for password change functionality

## Project Structure 🧑‍💻
The repository is structured as follows:

```
change_password/
├── config/                   # Configuration files for the application.
│   └── config.ru             # Main configuration file for the application setup.
│
├── controllers/              # Manages incoming requests and responses.
│   └── change_password.rb    # Controller to manage password change requests.
│
├── db/                       # Database-related logic.
│   └── db.rb                 # Contains database connection details and schema setup.
│
├── models/                   # Contains models used in the application.
│   └── user.rb               # Defines the user model, including attributes and validations.
│
├── services/                 # Core business logic for the service.
│   └── user_service.rb       # Contains the logic for processing user password changes.
│
├── app.rb                    # Main entry point for the application.
├── Dockerfile                # Docker configuration for building the service container.
├── Gemfile                   # Lists the dependencies for the Ruby application.
└── README.md                 # This file.
```

### Folder Descriptions 📂
- **config/**: Contains configuration files that set up the environment and service configurations.
- **controllers/**: Manages incoming HTTP requests and handles the flow of data to and from the services.
- **db/**: Manages database connections and setup, ensuring that data is stored securely.
- **models/**: Contains the user model which defines the structure of user data, including password and validation rules.
- **services/**: Contains the business logic for the microservice, including the user service that processes password changes.
- **app.rb**: The main entry point to start the application and handle routing.
- **Dockerfile**: A file used to build the Docker image for the microservice, allowing for easy deployment.
- **Gemfile**: Specifies the Ruby gems required for the application to run, such as web frameworks and database clients.

## How to Deploy ⚙️
1. **Clone the Repository:**
   ```bash
   git clone https://github.com/Loony213/email-service.git
   ```

2. **Install Dependencies:**
   Navigate to the project directory and install the necessary Ruby gems:
   ```bash
   bundle install
   ```

3. **Run the Service:**
   - Once dependencies are installed, start the service:
     ```bash
     ruby app.rb
     ```

4. **Docker Deployment:**
   - Build the Docker image:
     ```bash
     docker build -t kamartinez/change_password .
     ```
   - Run the container:
     ```bash
     docker run -p 5000:5000 kamartinez/change_password
     ```

5. **Access the Service:**
   - The Change Password service will be available on `http://localhost:5000` once the container is running.

## Features ✨
- **Password Change**: Facilitates the secure change of user passwords.
- **Secure Authentication**: Ensures that password changes are performed securely.
- **Modular Design**: Easy to scale and integrate into other services or applications.

## License 📜
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
