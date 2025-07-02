
# 📂 Get Description Service

This folder contains the logic for the **Get Description** functionality of the Email Service microservice. The service is built using **Ruby 3.2** with the **Sinatra** framework, and it provides an API endpoint to retrieve the description of the service.

---

## 📌 Features

- 📝 **Get Service Description**: Allows users to retrieve the description of the service.
- 📡 **API Endpoint**: Exposes a RESTful endpoint (`GET /get-description`) to fetch the service description.
- 🔑 **Database Interaction**: Interacts with a SQL Server database to store and retrieve service-related information.
- 🛠️ **Controller and Model Design**: The logic is divided into a controller (`get_description.rb`) and a model (`service.rb`) for easy maintenance and separation of concerns.
- 📦 **Dockerized**: The service is containerized using Docker for easy deployment and scalability.
- 🛡️ **Security**: Ensures that the description is accessible only to authenticated users.

---

## 🧩 Architecture

The **Get Description** service follows a modular and scalable architecture using **Sinatra** for routing and handling HTTP requests. It interacts with a SQL Server database to manage the description data. Here's an overview of the architecture:

1. **Controller Layer**:
   - **`controllers/get_description.rb`**: This is where the main business logic for retrieving the description resides. It handles incoming requests and communicates with the model to fetch the description.

2. **Model Layer**:
   - **`models/service.rb`**: The service model interacts with the database to fetch the service description.

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
get_description/
├── config.ru             # Rack configuration file
├── controllers/
│   └── get_description.rb # Controller logic for fetching service description
├── db/
│   └── db.rb             # Database connection logic (using TinyTDS)
├── models/
│   └── service.rb        # Service model handling description data retrieval
└── services/
    └── app.rb            # Main application file that configures the service
```

### 📝 Description of Each File

- **`config.ru`**: This file contains the Rack configuration for setting up the Sinatra application.
- **`controllers/get_description.rb`**: This is the controller responsible for the business logic of fetching the service description. It listens for requests and processes them.
- **`db/db.rb`**: This file manages the connection to the SQL Server database using the `TinyTDS` library.
- **`models/service.rb`**: This model represents the service in the system. It handles the logic of fetching the service description from the database.
- **`services/app.rb`**: This is the main application file where the service is initialized, routes are configured, and the server is started.

## ⚙️ How It Works

1. **Database Connection**: 
   - The `db.rb` file manages the connection to the SQL Server database using the `TinyTDS` library.
   - This connection is used by the models to interact with the database.

2. **Get Description Logic**: 
   - When a `GET` request is sent to the `/get-description` endpoint, the `get_description.rb` controller processes the request. 
   - It retrieves the description from the `service.rb` model.

3. **Service Model**:
   - The `service.rb` model is used to fetch the service description from the database.

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
cd email-service/get_description
```

2. **Install dependencies** (inside the project folder):
```bash
bundle install
```

3. **Build the Docker image**:
```bash
docker build -t kamartinez/get-description .
```

4. **Run the container**:
```bash
docker run -d -p 4567:4567 kamartinez/get-description
```

   The service will be accessible at:  
   📍 `http://localhost:4567`

5. **Test the service**:
   - Use a tool like **Postman** or **curl** to send a `GET` request to:
   ```bash
   GET http://localhost:4567/get-description
   ```

### Example Response:
```json
{
  "status": "success",
  "description": "This is the description of the Email Service"
}
```

## 🔗 Endpoints

- **`GET /get-description`**: Fetch service description.
- **`GET /`**: Root test route: `"Ruby service running successfully"`

## 🛠️ Requirements

- Docker
- Internet access to install dependencies
- Ruby 3.2 and Bundler (inside container)
- Connection to a SQL Server (TinyTDS-compatible)

---

## 👤 Author

Developed by **Loony213**  
Image on Docker Hub: `kamartinez/get-description`  
Part of the **Distribuida** system
