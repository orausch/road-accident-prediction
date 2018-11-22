# Setting up the docker image
Create a folder in your home directory called `docker_data` using
```
mkdir -p ~/docker_data
```
Then start the database by running `./start_docker.sh`. This might require
sudo.  Then run `./load_osm.sh` to load the osm data into the database. This
takes around 5 minutes.

# Loading accident data



# Connecting to the database
To connect to the database using tools such as `psql` or Qgis, use the
following connection information:
```
username:docker
password:docker
host:localhost
port:25432
database name:gis
```
