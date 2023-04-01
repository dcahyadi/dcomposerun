echo "START DOCKER-COMPOSE"
echo "===================="
sudo chown -R 5050:5050 ./pgadmin/data
sudo chown -R systemd-network:root ./rabbitmq/log/
sudo chown -R 100:101 ./rabbitmq/etc/
sudo chmod -R 775 ./elasticsearch/
sudo chmod -R 775 ./mssql/
sudo sysctl -w vm.max_map_count=262144
docker-compose up -d