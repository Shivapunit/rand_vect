# rand_vect
Random Vectorizer API

[Use a web framework of your choice (Flask, Django, FastAPI, etc) to develop a single production-quality API endpoint that takes a sentence as input and returns a random 500 dimensional array of floats.]


## for Production deployment:
1. 1st step - Docker installed in server.

## Installation - Development
   
1.  pip3 install -r requirements.txt 
(Install dependencies in your virtual enviornment)
    
## Usage - Development

1. Run the folling command to test and start the server:
    ```shell
    sh ./app1.sh
    
This will create a docker image named "rand_vect", Run it by using the same name as container name and start the service


## Installation - Production (using Docker)

1. Run the following command to install the application using docker:
    ```shell
    sh ./install.sh
    ```
This will create a docker image named "rand_vect", Run it by using the same name as container name and start the service


## Usage - Production (using Docker)

1. Start the docker container:
    ```shell
    sh ./start_docker.sh

2. Send a POST request to the API endpoint using your favorite HTTP client or tool (e.g., cURL, Postman).
    ```shell
    POST /vectorize HTTP/1.1
    Host: localhost:5000
    Content-Type: application/json
    
    {
      "sentence": "This is an example sentence"
    }
The API will respond with a JSON object containing the random 500-dimensional array of floats.


## Server and Securtiy Configuration

1. The application uses Gunicorn as the production-ready server. The Gunicorn configuration is defined in the gunicorn_config.py file. You can modify the configuration parameters to customize the server behavior according to your needs.

2. Gunicorn is a pure-Python HTTP server for WSGI applications. It allows you to run any Python application concurrently by running multiple Python processes within a single dyno.

3. SSL/TLS: By default, the application runs over HTTP. If you want to enable SSL/TLS encryption, you can provide the appropriate SSL/TLS certificate and private key files and configure Gunicorn to use HTTPS. Refer to the Gunicorn documentation for detailed instructions.

## Running Tests:

1. To run the unit tests for the application, execute the following command:
    ```shell
    pytest

The tests ensure the functionality of the vectorization process and the expected behavior of the API endpoint.

Run tests in a module

   pytest app0.py
   
Run tests in a directory

   pytest testing/
   
Run tests by keyword expressions

   pytest -k 'This is an example sentence'
