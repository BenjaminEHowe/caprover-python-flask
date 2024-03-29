# Python (Flask) deployed to CapRover
A simple application using Python's [Flask](https://flask.palletsprojects.com/en/3.0.x/) framework, deployed as a Docker container to a [CapRover](https://caprover.com/) instance using GitHub Actions.
While the application doesn't do anything fancy, this repository aims to demonstrate best practice for deploying a Python-based application using GitHub Actions and CapRover.

## Building the Docker image locally
To build the Docker image locally: `docker build . -t caprover-python-flask`

To run the Docker image locally: `docker run -p 8888:8080 caprover-python-flask` (the application will be accessible at http://localhost:8888/)
