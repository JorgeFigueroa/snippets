
docker --version
docker container --help

docker run --interactive --tty ubuntu bash  #crea container ubuntu

docker container ls --all          ## list container
docker ps -a                       ## list container
docker rm CONTAINER_ID             ## remove container
docker images                      ## list images
docker rmi -f IMAGE_ID             ## remove image 
docker commit CONTAINER_ID  NAME

docker run --name REPOSITORY -d test/nginx ##crea images

docker run -p 5432:5432  --name bmw-db -e POSTGRES_PASSWORD=postgres -d postgres:9.3
docker run --name dbTest -e POSTGRES_PASSWORD=postgres -d postgres
docker cp filename nomecontainer:percorsoDoveCopiare
docker exec -it nomeContainerPostgres bash psql -d database -U username -f percorsoDoveCopiare/fileDump.sql


 docker login
 docker push