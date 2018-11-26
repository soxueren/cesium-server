# cesium-server
Server for Cesium Terrain And  3D Tiles

# product Terrain data

```
gdalbuildvrt -resolution highest  /data/srtm/tiles.vrt /data/tif/*.tif
docker run -it --rm -v /data:/data soxueren/busybox-gdal:ctb ctb-tile -f Mesh -C -N -o /data/srtm /data/srtm/tiles.vrt 
docker run -it --rm -v /data:/data soxueren/busybox-gdal:ctb ctb-tile -f Mesh -C -N -l -o /data/srtm /data/srtm/tiles.vrt
```
# product 3Dtiles data

[objTo3d-tiles](https://github.com/PrincessGod/objTo3d-tiles)

[COLLADA2GLTF](https://github.com/KhronosGroup/COLLADA2GLTF)

[Cesium云服务](https://cesium.com/ion/)

[3d-tiles-pipeline](https://cesium.com/blog/2018/10/09/ion-3d-tiles-pipeline/)

[convertmodel](http://52.4.31.236/convertmodel.html)

[3d-tiles-tools](https://github.com/AnalyticalGraphicsInc/3d-tiles-tools)
