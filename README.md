# To-do List Application

A **full-stack to-do list application** built to demonstrate modular architecture, containerization, and seamless integration between frontend, backend, and database components. The app allows users to manage their tasks efficiently with CRUD operations.

---

## **Features**
- **Frontend**: Built with modern JavaScript frameworks (React or similar) to provide a responsive and user-friendly interface.
- **Backend**: A Node.js-powered API handling task creation, retrieval, updating, and deletion.
- **Database**: MongoDB for robust and scalable data storage.
- **Dockerized Setup**: Multi-container setup using Docker and Docker Compose.
- **Clean Architecture**: Modular design with distinct frontend, backend, and database layers.

---

## **Getting Started**

### **Prerequisites**
1. Install **Docker** and **Docker Compose**:
   - [Docker Installation Guide](https://docs.docker.com/get-docker/)
   - [Docker Compose Installation Guide](https://docs.docker.com/compose/install/)
2. Clone the repository:
   ```bash
   git clone git@github.com:Mickeydoe/To-do-List.git
   cd To-do-List
   ```

### **Setup Instructions**
1. Build and start the application:
   ```bash
   docker-compose up --build
   ```
2. Access the application:
   - Frontend: [http://localhost:3000](http://localhost:3000)
   - Backend API: [http://localhost:5000](http://localhost:5000)

---

## **Project Structure**
```plaintext
To-do-List/
├── Frontend/        # React/Vite frontend for the application
│   ├── src/         # Components, hooks, and utilities
│   ├── public/      # Static files
│   └── Dockerfile   # Frontend Docker setup
├── Backend/         # Node.js backend for API handling
│   ├── DB/          # Database connection and models
│   ├── src/         # Backend routers and controllers
│   └── Dockerfile   # Backend Docker setup
├── docker-compose.yml # Orchestrates multi-container setup
└── README.md        # Project documentation
```

---

## **Built With**
- **Frontend**: React, Vite
- **Backend**: Node.js, Express.js
- **Database**: MongoDB
- **Docker**: Multi-container setup with networking

---

## **Environment Variables**
The project uses environment variables to configure the backend. Below are the required variables:

| Variable   | Description                | Default Value                  |
|------------|----------------------------|--------------------------------|
| `MONGO_URI`| MongoDB connection string  | `mongodb://database:27017/todo-db` |

Set these variables in a `.env` file in the `Backend` directory.

---

## **Network and Security Configurations**
- **Network**: Containers communicate over a bridge network (`app-network`).
- **Ports**:
  - Frontend: `3000:80`
  - Backend: `5000:5000`
  - Database: `27017:27017`
- **Database Credentials**: Use a secure `.env` file for sensitive information.

---

## **Troubleshooting Guide**
- **Build Errors**: Ensure Docker is installed correctly and files are in the expected structure.
- **Frontend Not Loading**: Check if the backend URL in the frontend code is set to `http://backend:5000`.
- **Database Not Connecting**: Verify that the `MONGO_URI` environment variable matches the service name `database`.

---

## **Testing**
To validate the setup:
1. Check the logs:
   ```bash
   docker-compose logs
   ```
2. Test API endpoints:
   - Use a tool like [Postman](https://www.postman.com/) or [cURL](https://curl.se/) to interact with the backend.
   - Example:
     ```bash
     curl -X GET http://localhost:5000/api/todos
     ```

---

## **Contributing**
Contributions are welcome! Fork the repository and create a pull request with your changes.

---

## **License**
This project is licensed under the MIT License. See [LICENSE](LICENSE) for more details.

---
