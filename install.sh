# Create docker image
docker build -t rand_vect .

# Build docker container from image
docker run -d -p 5000:5000 --name rand_vect rand_vect:latest
