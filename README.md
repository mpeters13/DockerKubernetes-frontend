# Front End React App
This is a simple web application made while learning Docker and Kubernetes

## The Application
Simply a default react app made from create-react-app

In the project directory, you can run:

## Whats The Point?
- using docker-compose to simplify local developement
- creating a production Dockerfile for production builds

## How To Run Locally
1. make sure you have docker installed
2. run "docker-compose up" out of the root directory
The application should be running on localhost:3000

## How To Create Production Build
1. make sure you have docker installed
2. run "docker build ." in the root directory
  - this will create a production image of the application
  - copy the image id from the output
3. run "docker run -p 8080:80 {image_id}"
  - this will create a container running the production code of the app
The application should be accesible through localhost:8080
