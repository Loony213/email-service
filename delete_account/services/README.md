
# Services Folder Overview ⚙️

The **services** folder contains the business logic of the application. Specifically, the `user_service.rb` file defines the service that handles user-related operations such as changing the user's email address and password. 

## Purpose 🎯
The **services** folder contains the **UserService** class, which is responsible for encapsulating the business logic related to user management. The service provides methods for changing a user's email (`cambiar_email`) and password (`cambiar_password`). It interacts with the **User** model to perform database operations like querying and updating user records.

The **UserService** class ensures that the application's business rules are applied when modifying user data. It validates the input data, checks if the user exists, and updates the user's information if all conditions are met.

## Functionality 🔧
- **Business Logic**: The service implements the core business logic for user-related actions such as email and password updates.
- **Data Validation**: It validates incoming data to ensure that all required fields are provided and that the user exists before attempting to modify any data.
- **Error Handling**: The service returns appropriate status codes and error messages when the provided data is invalid or when the user is not found.
- **Interacts with the Model**: The service interacts with the **User** model to execute necessary database queries and perform updates on user data.

This folder is critical for processing user requests and maintaining the application's business rules related to user management.
