# Docker
## On Linux or OS X
1. `cd docker`
2. `./build.sh`
	- This only needs to happen the first time, and after something changes to `package.json`.
3. `./yarn-watch.sh`
	- run this (re)start the server

If you modified the `package.json` file, you need to run `./docker/yarn-install.sh`.

If you want to cleanup any files created by the Docker container, run `./docker/cleanup.sh`


## On Windows
1. `cd docker`
2. `build.bat`
	- This only needs to happen the first time, and after something changes to `package.json`.
3. `cd ..`
4. `docker\yarn-watch.bat`
	- run this (re)start the server


	If you modified the `package.json` file, you need to run `docker\yarn-install.bat`.

	If you want to cleanup any files created by the Docker container, run `docker\cleanup.bat`
