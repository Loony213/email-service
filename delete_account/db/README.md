
# DB Folder Overview 🗃️

The **db** folder contains the logic for interacting with the database. Specifically, the `db.rb` file is responsible for establishing the connection between the application and the SQL Server database using the TinyTds client.

## Purpose 🎯
The **db** folder is responsible for setting up and managing the database connection. The `db.rb` file contains the configuration for connecting to an external database, providing the application with the ability to interact with it and perform queries, inserts, and updates.

The connection is established using the **TinyTds** gem, a Ruby library for connecting to Microsoft SQL Server. This allows the application to securely access and manipulate data stored in the SQL Server database.

## Functionality 🔧
- **Database Connection**: The file initializes a connection to the SQL Server database using credentials such as the username, password, host, and database name.
- **Secure Interaction**: It securely connects to the database, ensuring that the application can retrieve and store information without manually managing the connection throughout the application.
- **External Database Access**: The `db.rb` file connects to a remote database hosted on AWS, allowing for remote access to the database for the authentication system.

This folder is crucial for establishing the foundation of database interaction, enabling the application to function as intended by storing and retrieving necessary data.
