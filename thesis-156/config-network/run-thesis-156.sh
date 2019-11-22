# สร้าง Network 
docker network create -d bridge --subnet=172.20.0.0/16 --gateway=172.20.0.1 thesis-156


docker run -d --network=thesis-156 --ip=172.20.0.5 --name=db-server thesis-155:latest

docker run -d --network=thesis-156 --ip=172.20.0.10 --name=db-admin --link postgres:db -p 10081:8080 adminer:4.7.5-standalone