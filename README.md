# cesium-server
Server for Cesium Terrain And  3D Tiles

# product Terrain data

```
gdalbuildvrt -resolution highest  /data/srtm/tiles.vrt /data/tif/*.tif
docker run -it --rm -v /data:/data soxueren/busybox-gdal:ctb ctb-tile -f Mesh -C -N -o /data/srtm /data/srtm/tiles.vrt 
docker run -it --rm -v /data:/data soxueren/busybox-gdal:ctb ctb-tile -f Mesh -C -N -l -o /data/srtm /data/srtm/tiles.vrt
```
# product 3Dtiles data
