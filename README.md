# OSM Clear
* A style designed for use with [ClearTables](https://github.com/pnorman/ClearTables)

![screenshot](https://raw.github.com/ClearTables/osm-clear/master/preview.png)

## Goals
- Easy to adapt to your own uses
- Reasonable rendering performance
- Reasonable CartoCSS compilation time
- A test of what ClearTables can do

## Similar projects
- [OSM Bright](https://github.com/mapbox/osm-bright)

## Install
- [Import data with osm2pgsql](https://github.com/pnorman/ClearTables#usage) to the database `gis`
- Run [osm-clear.tm2source/get-shapefiles.sh](osm-clear.tm2source/get-shapefiles.sh)
- Edit [osm-clear.tm2/project.yml](osm-clear.tm2/project.yml) to have the `source` be the location of the tm2source, e.g. ``source: "tmsource:///home/ubuntu/osm-clear/osm-clear.tm2source"``
- Install the `z()` function in the database with `psql -d gis -f z.sql`
- Open with [Kosmtik](https://github.com/kosmtik/kosmtik)
