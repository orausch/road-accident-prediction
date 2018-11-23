docker exec postgis mkdir /var/lib/postgresql/images/
docker exec postgis python -c "import render;render.renderall(8, 32)"
