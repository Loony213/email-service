
# Delete Account Microservice 🗑️

This microservice is part of the **Email Service** domain and is responsible for handling requests to delete a user's account. It securely removes user data from the system, ensuring that all information related to the user is deleted properly.

## Repository Link 📁
- [GitHub Repository](https://github.com/Loony213/email-service)

## Docker Image 🐳
- **Docker Image:** `kamartinez/delete-account`

## Purpose 🎯
The **Delete Account** microservice allows users to delete their email account and remove all associated data from the system. The service ensures that the deletion process is secure, and it interacts with the database to ensure that no traces of the user's information remain in the system.

## Architecture Style 🏗️
- **Microservice Architecture:** This service is designed as a standalone microservice, focusing solely on the functionality of deleting user accounts.
- **Design Pattern:** The system follows the **MVC (Model-View-Controller)** design pattern, with a clear separation of concerns between the controller, service, and model layers.

## Technologies 💻
- **Programming Language:** Ruby
- **Containerization:** Docker (optional)
- **Database Interaction:** SQL Server (via TinyTds)
- **API Integration:** REST APIs for the account deletion process

## Project Structure 🧑‍💻
The repository is structured as follows:

```
delete_account/
├── config/                   # Configuration files for setting up the environment.
│   └── config.ru             # Main configuration file for application setup.
│
├── controllers/              # Handles incoming requests and responses.
│   └── delete_user.rb        # Controller to handle account deletion requests.
│
├── db/                       # Database-related logic for storing and retrieving user data.
│   └── db.rb                 # Contains the database connection and operations.
│
├── models/                   # Defines models for user data and database interactions.
│   └── user.rb               # User model that manages user data.
│
├── services/                 # Core logic and business logic for handling user operations.
│   └── user_service.rb       # Contains the service for deleting the user's account.
│
├── app.rb                    # Main entry point to run the application.
├── Dockerfile                # Docker configuration for the containerized service.
├── Gemfile                   # Defines the dependencies for the Ruby application.
└── README.md                 # This file.
```

### Folder Descriptions 📂
- **config/**: Contains configuration settings and environment setup for the service.
- **controllers/**: Responsible for processing HTTP requests related to account deletion.
- **db/**: Contains logic for interacting with the database, including user data storage and retrieval.
- **models/**: Defines the structure of user data and the necessary operations to interact with it.
- **services/**: Contains the core business logic for processing user account deletions.
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
     docker build -t kamartinez/delete-account .
     ```
   - Run the container:
     ```bash
     docker run -p 5000:5000 kamartinez/delete-account
     ```

5. **Access the Service:**
   - The service will be accessible on `http://localhost:5000` once the container is running.

## Features ✨
- **Account Deletion**: Allows users to securely delete their email account and all associated data.
- **Modular Architecture**: The microservice is modular and easily extendable to include additional user-related functionalities.
- **Database Integration**: Interacts with the database to permanently delete user information.

## License 📜
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
