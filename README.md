# My .NET Application

This project is a basic .NET application that demonstrates how to build and run a Docker container for a web application.

## Project Structure

```
my-dotnet-app
├── src
│   ├── Program.cs
│   ├── Startup.cs
│   └── Controllers
│       └── HomeController.cs
├── Dockerfile
├── docker-compose.yml
├── .dockerignore
├── .gitignore
└── README.md
```

## Getting Started

To get started with this project, follow the instructions below.

### Prerequisites

- Docker installed on your machine
- .NET SDK installed (if you want to run the application locally without Docker)

### Building the Docker Image

1. Open a terminal and navigate to the project directory.
2. Run the following command to build the Docker image:

   ```
   docker build -t my-dotnet-app .
   ```

### Install Docker Compose
https://docs.docker.com/compose/install/

### Running the Application

To run the application using Docker, execute the following command:

```
docker-compose up
```

This command will start the application and make it accessible at `http://localhost:5001`.

### Stopping the Application

To stop the application, press `Ctrl+C` in the terminal where the application is running, or run:

```
docker-compose down
```

## Usage

Once the application is running, you can access it in your web browser. The HomeController provides an Index method that handles HTTP requests.

## Contributing

Feel free to submit issues or pull requests if you have suggestions for improvements or features.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.