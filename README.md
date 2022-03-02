OpenPype 4 stack
================

Installation
------------

### Build frontend

It is crucial to build the frontend before starting the stack.
Otherwise it won't be available.

Use `yarn build` in the `openpype4-frontend`
(see `openpype4-frontend/README.md` for more details).

### Install docker

Docker and docker-compose are required to run this stack.

If you are running Debian based distribution, you may use `install.docker.script`
from [this repository](https://github.com/immstudios/installer)

Edit `docker-compose.yml` according to your needs

### Start the stack

Run `docker-compose up` command.


### Updating

Use `git submodule update --remote` to pull the newest version of submodules.
In case of a major change, you might need to rebuild the database using the
following command:

`docker-compose exec backend ./tool-setup --with-schema`

or by turning the stack down including the database (`docker-compose down -v`)
and starting it again.

Tools
-----

 - `tool-demo.sh` - Create demo projects
 - `tool-postgres.sh` - Run PostgreSQL shell
 - `tool-setup.sh` - Apply settings template from `settings/template.json`.
   If the file does not exist, apply default settings.

