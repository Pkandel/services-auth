# Auth Service



### Scripts

1. `./docker.sh dev`: This will run the application in development environment.
2. `./docker.sh prod`: This will complie the application and run in the production enviornment.
3. `./docker.sh stop`: This will stop all the running container.

> Note: Everytime you Add/remove packages from the package.json file, please stop the container and run the project again. This is required as we don't want to make conflict of `node_modules` in host machine and docker container.
