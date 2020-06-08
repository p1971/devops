# for elasticsearch
sudo sysctl -w vm.max_map_count=262144

# common network for all containers
docker network create devnet