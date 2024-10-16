docker run -itd --name u3 ubuntu
docker ps
docker exec -it u3 apt-get update -y
docker ps
docker exec -it u3 apt-get install -y apache2 curl net-tools
docker exec -it u3 service apache2 status
docker exec  u3 bash -c "echo 'Hello World' > /var/www/html/index.html"
docker exec -it u3 cat  /var/www/html/index.html
docker exec -it u3 service apache2 start
docker exec -it u3 service apache2 status
curl 172.17.0.2
