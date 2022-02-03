
docker version
docker info
docker container --help
docker search key

docker pull nome_image:version     ## scarica image
docker images                      ## list images
docker image rm <image id>            # Remove specified image from this machine
docker image rm $(docker image ls -a -q)   # Remove all images from this machine
docker rmi -f IMAGE_ID             ## remove image 

docker run -p 5432:5432  --name name_db -e POSTGRES_PASSWORD=postgres -d postgres:9.3    #crea container con image postgress
docker run -it  ubuntu:16.04 /bin/bash           # create container interactive con version
docker run -d -p 4000:80 friendlyhello           # Same thing, but in detached mode
docker run --name name_container -d test/nginx    ##crea container
docker run -ti –rm nome_image comando_linux

docker cp filename CONTAINER_ID:./tmp
docker rm CONTAINER_ID             ## remove container
docker exec -it CONTAINER_ID bash
docker exec -it CONTAINER_ID bash  ## connect container 
  apt-get update
  apt-get install vim nano
  psql -d name_db -U username -f path/filename.sql    ## Restore database
  ctrl + p + q        # uscire senza fermare il container
  exit                # uscire fermando contaniner




docker commit CONTAINER_ID  Nombre  ## crea una imagen a partir de otro  container    
docker commit --change='CMD["apache2ctl", "-D FOREGROUND"]'  -c "EXPOSE 85" CONTAINER_ID nombre

docker start CONTAINER_ID
docker stop CONTAINER_ID


docker build /PATH
docker build -t friendlyhello .  # Create image using this directory's Dockerfile

docker ps -a                       ## list container
docker container ls --all          ## list container
docker container ls                                # List all running containers
docker container ls -a             # List all containers, even those not running
docker container stop <hash>           # Gracefully stop the specified container
docker container kill <hash>         # Force shutdown of the specified container
docker container rm <hash>        # Remove specified container from this machine
docker container rm $(docker container ls -a -q)         # Remove all containers


docker login             # Log in this CLI session using your Docker credentials
docker tag <image> username/repository:tag  # Tag <image> for upload to registry
docker push username/repository:tag            # Upload tagged image to registry
docker run username/repository:tag                   # Run image from a registry

docker-compose up -d
docker-machine

docker network ls
docker network create --driver bridge nome_red
docker network inspect bridge
docker network rm nome_red
docker network ls



