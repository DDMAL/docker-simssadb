# docker-simssadb

## Installation
- First you must install docker
  - For Mac
    - `brew cask install docker`
    - `pip install docker compose`
  - For Ubuntu https://docs.docker.com/install/linux/docker-ce/ubuntu/

- To View the site with no modifications
  - Execute from the root of the repository: `docker compose up`
  - Go to ``http://127.0.0.1:1337`` on your web browser
- To work on the Django project,
  - You require the submodules: `git clone --recurse-submodules git@github.com:DDMAL/docker-simssadb.git`
  - Check if you have the latest branch in the `django/simssadb` folder execute `git pull origin develop`
    - If the latest has a different hash than the one referenced in this repository, make sure to commit the latest hash to this repository.
  - execute the following command from the root of the repository: `docker compose -f build.yml build`. Alternatively, try running `sudo docker compose up` if errors appear.
  - In another terminal window, execute:

  ```bash
  # This will give you a new shell
  docker-compose exec django bash

  # In the new shell, type the following
  /machine/start
  ```
