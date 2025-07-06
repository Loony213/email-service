
# Change Description Microservice ✍️

This microservice is part of the **Email Service** domain and is responsible for handling user description update requests. It provides functionality for securely updating the user's description in the system.

## Repository Link 📁
- [GitHub Repository](https://github.com/Loony213/email-service)

## Docker Image 🐳
- **Docker Image:** `kamartinez/description`

## Purpose 🎯
The **Change Description** microservice allows users to update their description. It ensures that the description change is processed securely and that the updated description is stored properly in the database.

## Architecture Style 🏗️
- **Microservice Architecture:** This service is designed as a standalone microservice, focusing specifically on updating the user's description.
- **Design Pattern:** The system follows the **MVC (Model-View-Controller)** design pattern, where the model handles data management (user description), the controller manages incoming requests (description change), and the service contains the business logic for updating the description.

## Technologies 💻
- **Programming Language:** Ruby
- **Containerization:** Docker (optional)
- **Database Interaction:** SQL Server (via TinyTds)
- **API Integration:** REST APIs for updating the user's description

## Project Structure 🧑‍💻
The repository is structured as follows:

```
description/
├── config/                   # Configuration files for setting up the environment.
│   └── config.ru             # Main configuration file for application setup.
│
├── controllers/              # Handles incoming requests and responses.
│   └── description.rb        # Controller to handle description change requests.
│
├── db/                       # Database-related logic for storing and retrieving user data.
│   └── db.rb                 # Contains the database connection and operations.
│
├── models/                   # Defines models for user data and database interactions.
│   └── user.rb               # User model that manages user data.
│
├── services/                 # Core logic and business logic for handling user operations.
│   └── user_service.rb       # Contains the service for updating the user's description.
│
├── app.rb                    # Main entry point to run the application.
├── Dockerfile                # Docker configuration for the containerized service.
├── Gemfile                   # Defines the dependencies for the Ruby application.
└── README.md                 # This file.
```

### Folder Descriptions 📂
- **config/**: Contains configuration settings and environment setup for the service.
- **controllers/**: Responsible for processing HTTP requests related to description change.
- **db/**: Contains logic for interacting with the database, including user data storage and retrieval.
- **models/**: Defines the structure of user data and the necessary operations to interact with it.
- **services/**: Contains the core business logic for processing user description updates.
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
     docker build -t kamartinez/description .
     ```
   - Run the container:
     ```bash
     docker run -p 5000:5000 kamartinez/description
     ```

5. **Access the Service:**
   - The service will be accessible on `http://localhost:5000` once the container is running.

## Features ✨
- **Description Update**: Allows users to securely update their description.
- **Modular Architecture**: The microservice is modular and easily extendable to include more user-related functionality.
- **Database Integration**: Interacts with the database to persist user description changes.

## License 📜
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
