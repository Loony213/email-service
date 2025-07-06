
# Change User Microservice ✨

This microservice is part of the **Email Service** domain and is responsible for changing a user's email address. It provides a service to securely change the email of a user, ensuring that the change is processed correctly and efficiently.

## Repository Link 📁
- [GitHub Repository](https://github.com/Loony213/email-service)

## Docker Image 🐳
- **Docker Image:** `kamartinez/change_user`

## Purpose 🎯
The **Change User** microservice allows users to update their email address. It ensures that the provided email is valid and that the change is processed securely, interacting with the database to reflect the updated information.

## Architecture Style 🏗️
- **Microservice Architecture:** This service is a standalone microservice that handles user email changes. It is independent, allowing for easy scaling and integration with other systems.
- **Design Pattern:** The system follows the **MVC (Model-View-Controller)** design pattern, where the model manages user data, the view handles user interaction, and the controller manages the business logic for the email change process.

## Technologies 💻
- **Programming Language:** Ruby
- **Containerization:** Docker (optional)
- **Database Interaction:** SQL Server (via TinyTds)
- **API Integration:** REST APIs for the email change process

## Project Structure 🧑‍💻
The repository is structured as follows:

```
change_user/
├── config/                   # Configuration files for setting up the environment.
│   └── config.ru             # Main configuration file for application setup.
│
├── controllers/              # Handles incoming requests and responses.
│   └── change_email.rb       # Controller to handle email change requests.
│
├── db/                       # Database-related logic for storing and retrieving user data.
│   └── db.rb                 # Contains the database connection and operations.
│
├── models/                   # Defines models for user data and database interactions.
│   └── user.rb               # User model that manages user data.
│
├── services/                 # Core logic and business logic for handling user operations.
│   └── user_service.rb       # Contains the service for updating the user's email.
│
├── app.rb                    # Main entry point to run the application.
├── Dockerfile                # Docker configuration for the containerized service.
├── Gemfile                   # Defines the dependencies for the Ruby application.
└── README.md                 # This file.
```

### Folder Descriptions 📂
- **config/**: Contains the configuration settings and environment setup for the service.
- **controllers/**: Responsible for processing HTTP requests related to email change.
- **db/**: Contains logic for interacting with the database, including user data storage and retrieval.
- **models/**: Defines the structure of user data and the necessary operations to interact with it.
- **services/**: Contains the core business logic for processing user email changes.
- **app.rb**: The main entry point to start the application and manage routes.
- **Dockerfile**: Provides a configuration to build and run the microservice in a Docker container.
- **Gemfile**: Specifies the Ruby dependencies necessary for the application.

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
   - After installing the dependencies, you can start the application:
     ```bash
     ruby app.rb
     ```

4. **Docker Deployment:**
   - Build the Docker image:
     ```bash
     docker build -t kamartinez/change_user .
     ```
   - Run the container:
     ```bash
     docker run -p 5000:5000 kamartinez/change_user
     ```

5. **Access the Service:**
   - The service will be accessible on `http://localhost:5000` once the container is running.

## Features ✨
- **Email Change**: Allows users to securely change their email addresses.
- **Modular Architecture**: The microservice is modular and easily extendable to include more user-related functionality.
- **Database Integration**: Interacts with the database to persist user email changes.

## License 📜
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
