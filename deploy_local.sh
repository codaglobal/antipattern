#! /bin/bash -e

echo "Setting local env variables"
## Change this value before running
export DRUPAL_DB_PASSWD=ChangeMe1st

echo "Building Docker images"
docker build --rm --tag coda-mysql:latest ./mysql
docker build --rm --tag coda-drupal:latest ./drupal

echo "Deploying MySQL"
docker run --mount src=mysql-data,dst=/var/lib/mysql --name drual-mysql -d coda-mysql:latest

echo "Deploying Drupal"
docker run --link drual-mysql:mysql --name drupal-app -d coda-drupal:latest
