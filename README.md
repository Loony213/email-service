
# Email Service Microservices 📧

This repository is part of the **Email Service** domain, which contains microservices for managing user configurations related to their email accounts. These microservices allow users to update their email account settings, including changing their password, username, deleting their account, and updating or retrieving their description.

## Repository Link 📁
- [GitHub Repository](https://github.com/Loony213/email-service)

## Purpose 🎯
The **Email Service** repository provides several microservices to manage and configure user email settings. Users can update their password, change their username, delete their account, modify their description, or retrieve their description using the respective services provided in this repository.

## Architecture Style 🏗️
- **Microservice Architecture:** This service follows a microservices approach where each functionality is provided by an independent service, ensuring scalability and easier maintenance.
- **Design Pattern:** The system follows the **API-Driven Design** pattern where each microservice exposes an API for specific tasks such as changing password, updating the username, or deleting accounts.

## Technologies 💻
- **Programming Language:** Python or Go (depending on the implementation of individual services)
- **Containerization:** Docker (optional)
- **API Integration:** REST APIs for interacting with each service

## Project Structure 🧑‍💻
The repository is structured as follows:

```
email-service/
├── .github/workflows/         # Contains the GitHub Actions workflows for CI/CD automation.
│   └── new.yml                # Workflow configuration for the repository.
│
├── change_password/           # Service for changing the user's password.
│   └── README.md              # Documentation for the change password service.
│
├── change_user/               # Service for changing the user's username.
│   └── README.md              # Documentation for the change username service.
│
├── delete_account/            # Service for deleting a user's account.
│   └── README.md              # Documentation for the delete account service.
│
├── description/               # Service for updating and retrieving user description.
│   └── README.md              # Documentation for the description service.
│
├── get_description/           # Service for retrieving a user's description.
│   └── README.md              # Documentation for the get description service.
│
├── README.md                  # This file.
```

### Folder Descriptions 📂
- **.github/workflows/**: Contains CI/CD workflows using GitHub Actions for automated builds, tests, and deployments.
- **change_password/**: Contains the logic for the "Change Password" functionality.
- **change_user/**: Contains the logic for the "Change Username" functionality.
- **delete_account/**: Contains the logic for the "Delete Account" functionality.
- **description/**: Contains the logic for updating a user's description.
- **get_description/**: Contains the logic for retrieving a user's description.

## How to Deploy ⚙️
1. **Clone the Repository:**
   ```bash
   git clone https://github.com/Loony213/email-service.git
   ```

2. **Install Dependencies:**
   Navigate to the project directory and install the necessary dependencies (if any). Each microservice may have its own dependencies, so make sure to install them accordingly.

3. **Run the Services:**
   - After setting up the environment and installing dependencies, you can run individual services based on the task you want to perform, such as changing a password or updating a description.

4. **Docker Deployment:**
   - Build the Docker image for the service you wish to deploy:
     ```bash
     docker build -t kamartinez/email-service .
     ```
   - Run the container:
     ```bash
     docker run -p 5000:5000 kamartinez/email-service
     ```

5. **Access the Service:**
   - The services will be available on `http://localhost:5000` once the containers are running.

## Features ✨
- **Change Password**: Provides an endpoint to change the user's email account password.
- **Change Username**: Allows users to change their username associated with the email account.
- **Delete Account**: Enables users to delete their email account.
- **Update Description**: Provides the functionality to update a user's description.
- **Get Description**: Allows users to retrieve their current description.

## License 📜
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
