# cesium-server
Server for Cesium Terrain And  3D Tiles

# product Terrain data

地形生成工具
[Cesium Terrain Builder](https://github.com/soxueren/docker-busybox-gdal/tree/ctb)
[gdal2cesium](https://github.com/soxueren/docker-busybox-gdal/tree/gdal2cesium)
```
gdalbuildvrt -resolution highest  /data/srtm/tiles.vrt /data/tif/*.tif
docker run -it --rm -v /data:/data soxueren/busybox-gdal:ctb ctb-tile -f Mesh -C -N -o /data/srtm /data/srtm/tiles.vrt 
docker run -it --rm -v /data:/data soxueren/busybox-gdal:ctb ctb-tile -f Mesh -C -N -l -o /data/srtm /data/srtm/tiles.vrt
```
# product 3Dtiles data

模型工具

[Cesiumlab](https://www.cesiumlab.com/)

[Cesium云服务](https://cesium.com/ion/)

[glTF](https://github.com/KhronosGroup/glTF)

[3d-tiles](https://github.com/AnalyticalGraphicsInc/3d-tiles)

[objTo3d-tiles](https://github.com/PrincessGod/objTo3d-tiles)

[COLLADA2GLTF](https://github.com/KhronosGroup/COLLADA2GLTF)

[3d-tiles-pipeline](https://cesium.com/blog/2018/10/09/ion-3d-tiles-pipeline/)

[convertmodel](http://52.4.31.236/convertmodel.html)

[3d-tiles-tools](https://github.com/AnalyticalGraphicsInc/3d-tiles-tools)

[3dcity model source](https://www.citygml.org/3dcities/)

#  resources

[Cesium资料大全](https://www.jianshu.com/p/dd364b59b774)
