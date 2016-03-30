#!/bin/sh
set -e -u

UNZIP_OPTS=-qqun

# create and populate data dir
mkdir -p data/simplified-water-polygons-complete-3857
mkdir -p data/water-polygons-split-3857

# simplified-water-polygons-complete-3857
echo "downloading simplified-water-polygons-complete-3857..."
curl -z "data/simplified-water-polygons-complete-3857.zip" -L -o "data/simplified-water-polygons-complete-3857.zip" "http://data.openstreetmapdata.com/simplified-water-polygons-complete-3857.zip"
echo "simplified-water-polygons-complete-3857..."
unzip $UNZIP_OPTS data/simplified-water-polygons-complete-3857.zip \
  simplified-water-polygons-complete-3857/simplified_water_polygons.shp \
  simplified-water-polygons-complete-3857/simplified_water_polygons.shx \
  simplified-water-polygons-complete-3857/simplified_water_polygons.prj \
  simplified-water-polygons-complete-3857/simplified_water_polygons.dbf \
  simplified-water-polygons-complete-3857/simplified_water_polygons.cpg \
  -d data/

# water-polygons-split-3857
echo "downloading water-polygons-split-3857..."
curl -z "data/water-polygons-split-3857.zip" -L -o "data/water-polygons-split-3857.zip" "http://data.openstreetmapdata.com/water-polygons-split-3857.zip"
echo "expanding water-polygons-split-3857..."
unzip $UNZIP_OPTS data/water-polygons-split-3857.zip \
  water-polygons-split-3857/water_polygons.shp \
  water-polygons-split-3857/water_polygons.shx \
  water-polygons-split-3857/water_polygons.prj \
  water-polygons-split-3857/water_polygons.dbf \
  water-polygons-split-3857/water_polygons.cpg \
  -d data/

#index
echo "indexing shapefiles"
shapeindex --shape_files \
data/simplified-water-polygons-complete-3857/simplified_water_polygons.shp \
data/water-polygons-split-3857/water_polygons.shp

#finish
echo "...done!"
