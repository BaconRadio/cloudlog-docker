# Cloudlog Docker
A docker image for deploying Cloudlog that pulls the cloudlog sorce code from the cloudlog github repo. When cloning this module to your docker server include sub modules with `--recurse-submodules` or run
```shell
user@dockerhost$ git submodule init
user@dockerhost$ git submodule update
```

Launch the compose file with
```shell
user@dockerhost$ docker-compose up --build -d
```

See the docker docs for help installing docker:
- Docker install on Ubuntu: https://docs.docker.com/engine/install/ubuntu/
- Docker post install steps: https://docs.docker.com/engine/install/linux-postinstall/
- Docker compose install: https://docs.docker.com/compose/install/
