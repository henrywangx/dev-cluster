.PHONY: init up down minio-dev data

init: 
	mkdir -p jupyter/data
	mkdir -p dremio/data
	sudo chmod 777 dremio/data
	mkdir -p pg/data
	sudo chmod 777 pg/data
	cp -rf jupyter/py/* jupyter/data/

up: init
	docker-compose up -d

restart: init
	docker-compose restart

down:
	docker-compose down

data:
	wget  https://data.cityofnewyork.us/api/views/t29m-gskq/rows.csv ./
	mc cp rows.csv local/openlake/spark/sample-data/