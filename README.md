# dockerized-angular
Angular application in a docker container, for production and development purposes, with angular change detection in development mode.


## Running in a development mode:
- In the docker-compose.dev.yml file, change the volume path to path that your angular app is installed in your host machine, in volume section, especifically in volumes -> app-volume -> driver-opts -> device.
- Run the the docker-compose with this command: docker-compose -f docker-compose.dev.yml up --build 

## Running in a production mode:
- Run the docker-compose with this command: docker-compose -f docker-compose.prod.yml up --build 


## Development mode:
It was created a volume to map the app folder that is in host to container, and was made this configuration in packages.json file, to watch changes in app files:

"scripts": {
    "start": "ng serve --host 0.0.0.0 --port 80 --disable-host-check --poll 400",
}

The entrypoint.dev.sh do the "npm install" in your angular app if you don't have the node_modules folder, and then starts de application.


## Production mode:
There are two image layers, being that one layer the application is published with node, and the last layer it is a nginx with the angular app published.