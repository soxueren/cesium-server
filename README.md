# cesium-server
Server for Cesium Terrain And  3D Tiles

# Use Guide

## run server
```
npm i && npm start
```
## example: open http://localhost:8000/terrain/1.html

# product Terrain data

地形生成工具
[Cesium Terrain Builder](https://github.com/soxueren/docker-busybox-gdal/tree/ctb)
[gdal2cesium](https://github.com/soxueren/docker-busybox-gdal/tree/gdal2cesium)
```bash
#CTB必须处理nodata=>0和pixeltype=>int16
gdalwarp -s_srs EPSG:4326 -t_srs EPSG:4326 -dstnodata 0.0 -r bilinear -ot UInt32 -of GTiff /data/tif/*.tif  /data/merge/dem.tif
#生成tiles.vrt索引
gdalbuildvrt -resolution highest  /data/srtm/tiles.vrt  /data/merge/dem.tif
#生成瓦片
docker run -it --rm -v /data:/data soxueren/busybox-gdal:ctb ctb-tile -f Mesh -C -N -o /data/srtm /data/srtm/tiles.vrt 
#生成layer.json
docker run -it --rm -v /data:/data soxueren/busybox-gdal:ctb ctb-tile -f Mesh -C -N -l -o /data/srtm /data/srtm/tiles.vrt
```
# product 3Dtiles data

模型工具

[Cesiumlab](https://www.cesiumlab.com/)

[Cesium云服务](https://cesium.com/ion/)

[glTF](https://github.com/KhronosGroup/glTF)

[gltf-pipeline](https://github.com/AnalyticalGraphicsInc/gltf-pipeline)

[3d-tiles](https://github.com/AnalyticalGraphicsInc/3d-tiles)

[osgb23dtile-最快的倾斜摄影转3dtiles](https://github.com/fanvanzh/3dtiles)

[objTo3d-tiles](https://github.com/PrincessGod/objTo3d-tiles)

[COLLADA2GLTF](https://github.com/KhronosGroup/COLLADA2GLTF)

[3d-tiles-pipeline](https://cesium.com/blog/2018/10/09/ion-3d-tiles-pipeline/)

[convertmodel](http://52.4.31.236/convertmodel.html)

[3d-tiles-tools](https://github.com/AnalyticalGraphicsInc/3d-tiles-tools)

[3dcity model source](https://www.citygml.org/3dcities/)

#  resources

[Cesium资料大全](https://www.jianshu.com/p/dd364b59b774)
