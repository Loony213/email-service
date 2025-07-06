
# Delete User Controller Overview 🗑️

The **controllers** folder contains the logic for handling incoming HTTP requests and managing the flow of data. Specifically, the `delete_user.rb` controller is responsible for processing requests to delete a user account.

## Purpose 🎯
The **delete_user.rb** controller listens for `DELETE` requests at the `/delete_user` endpoint. It processes the request to delete a user based on the provided email. If the email is valid and associated with an existing user, the controller will invoke the `User.delete_user` method to remove the user's data from the system.

This controller ensures that users can securely delete their accounts, handling the necessary validations and returning appropriate status codes and messages based on the outcome.

## Functionality 🔧
- **Request Handling**: The controller listens for `DELETE` requests at the `/delete_user` endpoint and processes the email parameter sent in the request.
- **Input Validation**: It checks if the email parameter is provided and if it's valid. If the email is missing or empty, the controller returns a `400` status with an error message.
- **Service Interaction**: The controller interacts with the **User** model, calling the `delete_user` method to delete the user account.
- **Response Handling**: Based on the result of the deletion process, the controller returns a JSON response indicating success (status `200`) or failure (status `404`) with the relevant message.

This controller is essential for allowing users to delete their accounts securely, ensuring proper validation and interaction with the business logic for account deletion.
