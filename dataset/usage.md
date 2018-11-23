# Usage

First, pull the image using 

```
docker pull orausch/docker-road-accident-prediction:0.1
```

Then, start the image using `./start_docker.sh`. Wait for the repository to be
setup (should take around 30 seconds). The setup is done when 
```
LOG: database system is ready to accept connections
```
appears for the second time.

Make a folder in your home directory called `docker_data` and extract the
datasets into that folder (so that they are in `~/docker_data/data)`. Next, we
can load the data using `./load_data.sh`.  **This will take up to 30 minutes
depending on your hardware**.  If none of the commands error (check the command
line output), you can connect to the database using tools like `psql` or `qgis`
(See `connection-info.md`).

Once you have loaded the data, it should persist. To shut down the image, use
`docker stop postgis`, and to start it again use `docker start postgis`.

# Rendering the images
Before we can render the images, you have to get a `switzerland.tif` raster
file. You either generate this using `./render_raster.sh`, or use the provided
one. Then, you can render all the images for every accident in the database
using `./render_images.sh`.
