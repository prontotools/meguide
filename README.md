## Require
    - Install Docker Toolbox
        - Mac OS X : https://www.docker.com/products/docker-toolbox

## How to Setup
```
    - git clone git@github.com:prontotools/meguide.git
    - cd meguide
    - docker-machine start
    - eval $(docker-machine env)
    - docker build -t meguide .
    ## Normal mode ##
    - docker run -it --rm -p 3000:3000 --name meguide -v $PWD/:/app meguide
    ## Daemon mode ##
    - docker run --rm -p 3000:3000 --name meguide -v $PWD/:/app meguide -d
```

## Stop docker
```
    - docker stop meguide
```

## Shell to docker
```
	- docker exec -it meguide /bin/bash
```

## Create superuser
```
  - docker exec -it meguide python manage.py createsuperuser
```
