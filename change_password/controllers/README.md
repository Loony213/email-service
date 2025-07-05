
# Controllers Folder Overview 🎛️

The **controllers** folder contains the necessary controllers to handle HTTP requests and define the corresponding actions in the application. Specifically, the `change_password.rb` controller is responsible for handling password change requests from users.

## Purpose 🎯
The **controllers** folder's main role is to receive incoming HTTP requests, process them, and respond accordingly by calling appropriate services or models. The `change_password.rb` controller listens for requests to change a user's password and processes the information provided in the request.

In the case of the `change_password.rb` controller, it specifically handles `PUT` requests sent to the `/change-password` endpoint. The controller interacts with the `UserService` class to manage password changes by calling the `cambiar_password` method, which contains the business logic for updating the password.

## Functionality 🔧
- **Request Handling**: The controller accepts and processes incoming requests, specifically the `PUT /change-password` request, which includes user data such as email, old password, and new password.
- **Service Interaction**: The controller interacts with the `UserService` class to execute the necessary logic for changing the user's password.
- **Response**: After processing the request, the controller responds with the appropriate status and response body in JSON format, which indicates whether the password change was successful or failed.

This controller is essential for allowing users to securely update their passwords through the provided endpoint.
