#!/bin/bash

echo "Ansible Lab Info:"
echo "Name                 State                 IP                 SSH Ports"
echo "-----------------------------------------------------------------------"

# Get all container names
containers=$(docker-compose ps -q)

# Loop through each container and get its details
for container in $containers; do
    name=$(docker inspect --format '{{.Name}}' $container | sed 's/^\/\(.*\)$/\1/')
    state=$(docker inspect --format '{{.State.Status}}' $container)
    ip=$(docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $container)
    ports=$(docker inspect --format '{{range $p, $conf := .NetworkSettings.Ports}}{{$p}} -> {{(index $conf 0).HostIp}}:{{(index $conf 0).HostPort}}{{end}}' $container)

    printf "%-20s %-20s %-18s %s\n" $name $state $ip "$ports"
done