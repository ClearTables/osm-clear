#!/usr/bin/env bash
set -e -u

UNZIP_OPTS=-qqun

PSQL="psql -Xq -v ON_ERROR_STOP=1"

schema=shapefile_load

# create and populate data dir
mkdir -p data/

$PSQL -f - <<EOF
DROP SCHEMA IF EXISTS $schema CASCADE;
CREATE SCHEMA $schema;
EOF

# world_boundaries
# simplified-water-polygons-complete-3857

download="data/simplified-water-polygons-complete-3857.zip"
table=simplified_ocean
# Write the md5sum to a file. If the file doesn't exist, it writes a blank
md5sum "$download" > "$download.md5" || true

echo "downloading simplified-water-polygons-complete-3857..."
curl -z "$download" -L -o "$download" "http://data.openstreetmapdata.com/simplified-water-polygons-complete-3857.zip"
# Check if the file has changed

if md5sum --status -c "$download.md5"
then
  echo "$download unchanged"
else
  echo "Loading $download"
  unzip $UNZIP_OPTS $download \
    simplified-water-polygons-complete-3857/simplified_water_polygons.shp \
    simplified-water-polygons-complete-3857/simplified_water_polygons.shx \
    simplified-water-polygons-complete-3857/simplified_water_polygons.prj \
    simplified-water-polygons-complete-3857/simplified_water_polygons.dbf \
    simplified-water-polygons-complete-3857/simplified_water_polygons.cpg \
    -d data/
    shp2pgsql -D -I -c -g "way" -S -s 3857 data/simplified-water-polygons-complete-3857/simplified_water_polygons.shp $schema.$table \
    | $PSQL -f -
    $PSQL -f - <<EOF
    SET client_min_messages = WARNING;
    BEGIN;
    DROP TABLE IF EXISTS public.$table;
    ALTER TABLE $schema.$table SET SCHEMA public;
    COMMIT;
EOF
fi

download="data/water-polygons-split-3857.zip"
table=ocean

# Write the md5sum to a file. If the file doesn't exist, it writes a blank
md5sum "$download" > "$download.md5" || true

echo "downloading simplified-water-polygons-complete-3857..."
curl -z "$download" -L -o "$download" "http://data.openstreetmapdata.com/water-polygons-split-3857.zip"
# Check if the file has changed

if md5sum --status -c "$download.md5"
then
  echo "$download unchanged"
else
  echo "Loading $download"
  unzip $UNZIP_OPTS $download \
    water-polygons-split-3857/water_polygons.shp \
    water-polygons-split-3857/water_polygons.shx \
    water-polygons-split-3857/water_polygons.prj \
    water-polygons-split-3857/water_polygons.dbf \
    water-polygons-split-3857/water_polygons.cpg \
    -d data/
    shp2pgsql -D -I -c -g "way" -S -s 3857 data/water-polygons-split-3857/water_polygons.shp $schema.$table \
    | $PSQL -f -
    $PSQL -f - <<EOF
    SET client_min_messages = WARNING;
    BEGIN;
    DROP TABLE IF EXISTS public.$table;
    ALTER TABLE $schema.$table SET SCHEMA public;
    COMMIT;
EOF
fi
