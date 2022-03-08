OpenPype 4 stack
================

Installation
------------

### Clone this repo with submodules

`git clone https://github.com/pypeclub/openpype4-stack --recursive openpype4`

### Build frontend

It is crucial to build the frontend before starting the stack.
Otherwise it won't be available.

Use `yarn build` in the `openpype4-frontend`
(see `openpype4-frontend/README.md` for more details).

### Install docker

Docker and docker-compose are required to run this stack.

If you are running Debian based distribution, you may use `install.docker.script`
from [this repository](https://github.com/immstudios/installers)

Edit `docker-compose.yml` according to your needs

### Start the stack

Run `docker-compose up` command.


### Updating

Use `git pull` and then `git submodule update --remote` 
to pull the newest version of submodules.
In case of a major change, you might need to rebuild the database using the
following command:

`docker-compose exec backend ./tool-setup --with-schema`

or by turning the stack down including the database (`docker-compose down -v`)
and starting it again.


Usage
-----

By default, the server listens on HTTP(s) ports 80 and 443 on all interfaces,
exposes API on `localhost:5000` and PostgreSQL on `localhost:54321`.

If you run the stack on a publicly accessible server, you may set
`OPS_HOSTNAME` environment variable (via `.env` file). To allow
Caddy server to handle SSL certificates.

By default, following users are created:

 - `admin` - with global admin role
 - `manager` - with global manager role
 - `user` - normal user

 Passwords are the same as usernames.

Tools
-----

 - `tool-demo.sh` - Create demo projects
 - `tool-postgres.sh` - Run PostgreSQL shell
 - `tool-setup.sh` - Apply settings template from `settings/template.json`.
   If the file does not exist, apply default settings.
