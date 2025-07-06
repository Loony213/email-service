
# Change Email Controller Overview 🎛️

The **controllers** folder contains the logic for managing incoming requests and handling user interactions. Specifically, the `change_email.rb` controller is responsible for processing requests related to changing a user's email address.

## Purpose 🎯
The **change_email.rb** controller listens for `PUT` requests at the `/change-email` endpoint. When a request is received, the controller extracts the data (such as the old email and new email), validates it, and interacts with the **UserService** class to perform the business logic for updating the user's email address.

This controller acts as the intermediary between the incoming request and the core business logic, ensuring that the user's email is updated securely and efficiently.

## Functionality 🔧
- **Request Handling**: The controller receives a `PUT` request to change the user's email address.
- **Data Processing**: It processes the request data (old email and new email), ensures that the data is in the correct format, and calls the corresponding service method to handle the update.
- **Service Interaction**: The controller interacts with the **UserService** class to execute the core logic for changing the email.
- **Response**: After processing the request, the controller sends a JSON response containing the status and message, indicating whether the email update was successful or if any errors occurred.

This controller is essential for handling the API endpoint that enables users to change their email addresses securely.
