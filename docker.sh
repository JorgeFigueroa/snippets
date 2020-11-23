
docker version
docker info
docker container --help
docker search key
docker pull REPOSITORY:TAG

docker run -p 5432:5432  --name name_db -e POSTGRES_PASSWORD=postgres -d postgres:9.3 #crea container con image postgress
docker cp filename CONTAINER_ID:./tmp
docker exec -it CONTAINER_ID bash  ## connect container 
apt-get update
apt-get install vim nano
psql -d name_db -U username -f path/filename.sql    ## Restore database
ctrl + p + q        # uscire senza fermare il container
exit                # uscire fermando contaniner

docker container ls --all          ## list container
docker ps -a                       ## list container
docker rm CONTAINER_ID             ## remove container
docker images                      ## list images
docker rmi -f IMAGE_ID             ## remove image 
docker commit CONTAINER_ID  Nombre  ## crea una imagen a partir de otro  container    
docker commit --change='CMD["apache2ctl", "-D FOREGROUND"]'  -c "EXPOSE 85" CONTAINER_ID nombre

docker start CONTAINER_ID
docker stop CONTAINER_ID


docker build /PATH



docker build -t friendlyhello .  # Create image using this directory's Dockerfile
docker run -it  ubuntu:16.04 /bin/bash  #create container interactive con version

docker run -p 4000:80 friendlyhello  # Run "friendlyname" mapping port 4000 to 80
docker run -d -p 4000:80 friendlyhello         # Same thing, but in detached mode
docker run --name REPOSITORY -d test/nginx ##crea images
docker container ls                                # List all running containers
docker container ls -a             # List all containers, even those not running
docker container stop <hash>           # Gracefully stop the specified container
docker container kill <hash>         # Force shutdown of the specified container
docker container rm <hash>        # Remove specified container from this machine
docker container rm $(docker container ls -a -q)         # Remove all containers
docker image ls -a                             # List all images on this machine
docker image rm <image id>            # Remove specified image from this machine
docker image rm $(docker image ls -a -q)   # Remove all images from this machine
docker login             # Log in this CLI session using your Docker credentials
docker tag <image> username/repository:tag  # Tag <image> for upload to registry
docker push username/repository:tag            # Upload tagged image to registry
docker run username/repository:tag                   # Run image from a registry


docker network ls




