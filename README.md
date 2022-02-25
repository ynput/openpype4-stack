OpenPype 4 stack
================

Installation
------------

 - Clone `openpype-backend` and `openpype4-frontend`.
 - Run `yarn build` in the `openpype4-frontend` 
   (see `openpype4-frontend/README.md` for more details)
 - Install `docker` and `docker-compose`. 
   If you are running Debian, you may use `install.docker.script` 
   from [this repository](https://github.com/immstudios/installer)
 - Edit `docker-compose.yml` according to your needs

Then run `docker-compose up` command.

Tools
-----

 - `tool-postgres.sh` - Run PostgreSQL shell
 - `tool-setup.sh` - Apply settings template from `settings/template.json`. 
   If the file does not exist, apply default settings.

