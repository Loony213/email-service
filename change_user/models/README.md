
# Models Folder Overview 📦

The **models** folder contains the logic for interacting with the user data in the database. Specifically, the `user.rb` model defines methods for retrieving and updating user data in the database, such as finding users by email, updating email, and updating passwords.

## Purpose 🎯
The **models** folder contains the **User** class, which acts as an intermediary between the application and the database. It defines methods for querying and manipulating user data in the database. This allows the application to perform operations such as searching for a user by their email, updating a user's email address, and changing a user's password.

The **User** model interacts directly with the **db.rb** file to execute SQL queries that read from and write to the database.

## Functionality 🔧
- **User Queries**: The model provides methods like `find_by_email` and `find_by_email_and_password` to query the database for user records based on specific criteria.
- **Data Manipulation**: The model allows updating user information, such as updating the email or password, by executing SQL queries to modify the records in the database.
- **Separation of Concerns**: This model encapsulates the logic for interacting with the user data, keeping it separate from the rest of the application logic and making it easier to maintain and scale.

This folder is vital for managing the user data in the application and ensures that user-related data is handled efficiently and securely.
