
# Get Description Microservice 📝

This microservice is part of the **Email Service** domain and is responsible for handling requests to retrieve a user's description. It provides functionality to securely fetch and return the description of a user based on their email address.

## Repository Link 📁
- [GitHub Repository](https://github.com/Loony213/email-service)

## Docker Image 🐳
- **Docker Image:** `kamartinez/get_description`

## Purpose 🎯
The **Get Description** microservice enables users to retrieve their description from the system. By providing a valid email, users can get their stored description, ensuring that the retrieval process is secure and handled correctly.

## Architecture Style 🏗️
- **Microservice Architecture:** This service is designed as a standalone microservice, focusing specifically on retrieving the user's description.
- **Design Pattern:** The system follows the **MVC (Model-View-Controller)** design pattern, where the model manages the user data, the controller manages incoming requests, and the service contains the business logic for fetching the description.

## Technologies 💻
- **Programming Language:** Ruby
- **Containerization:** Docker (optional)
- **Database Interaction:** SQL Server (via TinyTds)
- **API Integration:** REST APIs for retrieving the user's description

## Project Structure 🧑‍💻
The repository is structured as follows:

```
get_description/
├── config/                   # Configuration files for setting up the environment.
│   └── config.ru             # Main configuration file for application setup.
│
├── controllers/              # Handles incoming requests and responses.
│   └── get_description.rb    # Controller to handle get description requests.
│
├── db/                       # Database-related logic for storing and retrieving user data.
│   └── db.rb                 # Contains the database connection and operations.
│
├── models/                   # Defines models for user data and database interactions.
│   └── user.rb               # User model that manages user data.
│
├── services/                 # Core logic and business logic for handling user operations.
│   └── user_service.rb       # Contains the service for retrieving the user's description.
│
├── app.rb                    # Main entry point to run the application.
├── Dockerfile                # Docker configuration for the containerized service.
├── Gemfile                   # Defines the dependencies for the Ruby application.
└── README.md                 # This file.
```

### Folder Descriptions 📂
- **config/**: Contains configuration settings and environment setup for the service.
- **controllers/**: Responsible for processing HTTP requests related to retrieving the user's description.
- **db/**: Contains logic for interacting with the database, including user data storage and retrieval.
- **models/**: Defines the structure of user data and the necessary operations to interact with it.
- **services/**: Contains the core business logic for processing user description retrieval.
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
     docker build -t kamartinez/get_description .
     ```
   - Run the container:
     ```bash
     docker run -p 5000:5000 kamartinez/get_description
     ```

5. **Access the Service:**
   - The service will be accessible on `http://localhost:5000` once the container is running.

## Features ✨
- **Description Retrieval**: Allows users to securely retrieve their stored description.
- **Modular Architecture**: The microservice is modular and easily extendable to include more user-related functionality.
- **Database Integration**: Interacts with the database to fetch user descriptions.

## License 📜
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
