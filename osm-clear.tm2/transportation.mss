@motorway-lz: #96acd6;
@motorway-ramp-lz: #a3b9e4;
@motorway-fill: #aab9d9;
@motorway-ramp-fill: #b7c7e7;
@motorway-casing: #789fde;
@motorway-ramp-casing: #86acec;

@major-lz: #e5c27c;
@major-fill: #fee5b9;
@major-casing: #eac168;

@lessmajor-lz: #d4c968;
@lessmajor-fill: #f5eaa6;
@lessmajor-casing: #d5c953;

@minor-lz: #dddddd;
@minor-fill: #ffffff;
@minor-casing: #aaaaaa;

@service-fill: @minor-fill;
@service-casing: @minor-casing;

// from width=0.15*e^(0.25*zoom)
@motorway-z4-width: 0.4;
@motorway-z5-width: 0.5;
@motorway-z6-width: 0.7;
@motorway-z7-width: 0.9;
@motorway-z8-width: 1.1;
@motorway-z9-width: 1.4;
@motorway-z10-width: 1.8;
@motorway-z11-width: 2;
@motorway-z12-width: 3;
@motorway-z13-width: 4;
@motorway-z14-width: 5;
@motorway-z15-width: 6;
@motorway-z16-width: 8;
@motorway-z17-width: 11;
@motorway-z18-width: 14;
@motorway-z19-width: 17;
@motorway-z20-width: 22;

// from width=0.2*e^(0.19*zoom)
@motorway-ramp-z8-width: 0.8;
@motorway-ramp-z9-width: 1;
@motorway-ramp-z10-width: 1.3;
@motorway-ramp-z11-width: 1.5;
@motorway-ramp-z12-width: 1.9;
@motorway-ramp-z13-width: 2.3;
@motorway-ramp-z14-width: 2.8;
@motorway-ramp-z15-width: 3.4;
@motorway-ramp-z16-width: 4.2;
@motorway-ramp-z17-width: 5.1;
@motorway-ramp-z18-width: 6.2;
@motorway-ramp-z19-width: 7.6;
@motorway-ramp-z20-width: 9.3;

@motorway-casing-width: 1.5;
@motorway-ramp-casing-width: 1;

// from width=0.14*e^(0.23*zoom)
@major-z4-width: 0.35;
@major-z5-width: 0.45;
@major-z6-width: 0.6;
@major-z7-width: 0.7;
@major-z8-width: 0.9;
@major-z9-width: 1.1;
@major-z10-width: 1.4;
@major-z11-width: 1.8;
@major-z12-width: 2;
@major-z13-width: 3;
@major-z14-width: 4;
@major-z15-width: 4;
@major-z16-width: 6;
@major-z17-width: 7;
@major-z18-width: 9;
@major-z19-width: 11;
@major-z20-width: 14;
@major-casing-width: 1.1;

// from width=0.11*e^(0.22*zoom)
@lessmajor-z4-width: 0.25;
@lessmajor-z5-width: 0.3;
@lessmajor-z6-width: 0.4;
@lessmajor-z7-width: 0.5;
@lessmajor-z8-width: 0.6;
@lessmajor-z9-width: 0.8;
@lessmajor-z10-width: 1;
@lessmajor-z11-width: 1.2;
@lessmajor-z12-width: 1.5;
@lessmajor-z13-width: 1.9;
@lessmajor-z14-width: 2;
@lessmajor-z15-width: 3;
@lessmajor-z16-width: 4;
@lessmajor-z17-width: 5;
@lessmajor-z18-width: 6;
@lessmajor-z19-width: 7;
@lessmajor-z20-width: 9;
@lessmajor-casing-width: 1.0;

// from width=0.10*e^(0.20*zoom)
@minor-z4-width: 0.2;
@minor-z5-width: 0.25;
@minor-z6-width: 0.3;
@minor-z7-width: 0.4;
@minor-z8-width: 0.5;
@minor-z9-width: 0.6;
@minor-z10-width: 0.7;
@minor-z11-width: 0.9;
@minor-z12-width: 1.1;
@minor-z13-width: 1.3;
@minor-z14-width: 1.6;
@minor-z15-width: 2;
@minor-z16-width: 2.5;
@minor-z17-width: 3;
@minor-z18-width: 3.7;
@minor-z19-width: 4.5;
@minor-z20-width: 5.5;
@minor-casing-width: 0.8;

@service-z15-width: 1.3;
@service-z16-width: 1.6;
@service-z17-width: 1.9;
@service-z18-width: 2.3;
@service-z19-width: 2.8;
@service-z20-width: 3.3;
@service-casing-width: 0.7;

#transportation-back-casing, #transportation, #roads-text {
  /* Motorways get their own unique styling at all zooms */
  [class = 'motorway'][zoom >= 4] {
    #transportation-back-casing[zoom >= 13],
    #transportation[zoom >= 13]::casing {
      line-color: @motorway-casing;
      line-width: @motorway-z13-width + 2*@motorway-casing-width;
      [zoom >= 14] { line-width: @motorway-z14-width + 2*@motorway-casing-width; }
      [zoom >= 15] { line-width: @motorway-z15-width + 2*@motorway-casing-width; }
      [zoom >= 16] { line-width: @motorway-z16-width + 2*@motorway-casing-width; }
      [zoom >= 17] { line-width: @motorway-z17-width + 2*@motorway-casing-width; }
      [zoom >= 18] { line-width: @motorway-z18-width + 2*@motorway-casing-width; }
      [zoom >= 19] { line-width: @motorway-z19-width + 2*@motorway-casing-width; }
      [zoom >= 20] { line-width: @motorway-z20-width + 2*@motorway-casing-width; }

      [ramp = true] {
        line-color: @motorway-ramp-casing;
        line-width: @motorway-ramp-z13-width + 2*@motorway-ramp-casing-width;
        [zoom >= 14] { line-width: @motorway-ramp-z14-width + 2*@motorway-ramp-casing-width; }
        [zoom >= 15] { line-width: @motorway-ramp-z15-width + 2*@motorway-ramp-casing-width; }
        [zoom >= 16] { line-width: @motorway-ramp-z16-width + 2*@motorway-ramp-casing-width; }
        [zoom >= 17] { line-width: @motorway-ramp-z17-width + 2*@motorway-ramp-casing-width; }
        [zoom >= 18] { line-width: @motorway-ramp-z18-width + 2*@motorway-ramp-casing-width; }
        [zoom >= 19] { line-width: @motorway-ramp-z19-width + 2*@motorway-ramp-casing-width; }
        [zoom >= 20] { line-width: @motorway-ramp-z20-width + 2*@motorway-ramp-casing-width; }
      }

      line-join: round;
      #transportation-back-casing {
        line-cap: round;
      }
      [brunnel = 'bridge'] {
        line-color: black;
      }
    }
    #transportation::fill {
      line-color: @motorway-lz;
      line-width: @motorway-z4-width;
      [zoom >= 4] { line-width: @motorway-z4-width; }
      [zoom >= 5] { line-width: @motorway-z5-width; }
      [zoom >= 6] { line-width: @motorway-z6-width; }
      [zoom >= 7] { line-width: @motorway-z7-width; }
      [zoom >= 8] { line-width: @motorway-z8-width; }
      [zoom >= 9] { line-width: @motorway-z9-width; }
      [zoom >= 10] { line-width: @motorway-z10-width; }
      [zoom >= 11] { line-width: @motorway-z11-width; }
      [zoom >= 12] { line-width: @motorway-z12-width; }
      [zoom >= 13] {
        line-color: @motorway-fill;
        line-width: @motorway-z13-width;
      }
      [zoom >= 14] { line-width: @motorway-z14-width; }
      [zoom >= 15] { line-width: @motorway-z15-width; }
      [zoom >= 16] { line-width: @motorway-z16-width; }
      [zoom >= 17] { line-width: @motorway-z17-width; }
      [zoom >= 18] { line-width: @motorway-z18-width; }
      [zoom >= 19] { line-width: @motorway-z19-width; }
      [zoom >= 20] { line-width: @motorway-z20-width; }

      // Low-zoom doesn't have the ramp column
      #transportation[ramp = true][zoom >= 10] {
        line-color: @motorway-ramp-lz;
        line-width: @motorway-ramp-z10-width;
        [zoom >= 11] { line-width: @motorway-ramp-z11-width; }
        [zoom >= 12] { line-width: @motorway-ramp-z12-width; }
        [zoom >= 13] {
          line-color: @motorway-ramp-fill;
          line-width: @motorway-ramp-z13-width;
        }
        [zoom >= 14] { line-width: @motorway-ramp-z14-width; }
        [zoom >= 15] { line-width: @motorway-ramp-z15-width; }
        [zoom >= 16] { line-width: @motorway-ramp-z16-width; }
        [zoom >= 17] { line-width: @motorway-ramp-z17-width; }
        [zoom >= 18] { line-width: @motorway-ramp-z18-width; }
        [zoom >= 19] { line-width: @motorway-ramp-z19-width; }
        [zoom >= 20] { line-width: @motorway-ramp-z20-width; }
      }
      line-join: round;
      line-cap: round;
    }
    #roads-text[zoom >= 6] {
      text-name: "[name]";
      text-face-name: @book-fonts;
      text-placement: line;
      text-halo-fill: @motorway-lz;
      [zoom >= 13] {
        text-halo-fill: @motorway-fill;
      }
      text-halo-radius: 1.5;
    }
  }

  [class = 'trunk'][zoom >= 4],
  [class = 'primary'][zoom >= 8],
  [class = 'secondary'][zoom >= 12] {
    #transportation-back-casing,
    #transportation::casing {
      ['mapnik::geometry_type' = 2][zoom >= 13] {
        line-color: @major-casing;
        line-width: @major-z13-width + 2*@major-casing-width;
        [zoom >= 14] { line-width: @major-z14-width + 2*@major-casing-width; }
        [zoom >= 15] { line-width: @major-z15-width + 2*@major-casing-width; }
        [zoom >= 16] { line-width: @major-z16-width + 2*@major-casing-width; }
        [zoom >= 17] { line-width: @major-z17-width + 2*@major-casing-width; }
        [zoom >= 18] { line-width: @major-z18-width + 2*@major-casing-width; }
        [zoom >= 19] { line-width: @major-z19-width + 2*@major-casing-width; }
        [zoom >= 20] { line-width: @major-z20-width + 2*@major-casing-width; }
        line-join: round;
        #transportation-back-casing {
          line-cap: round;
        }
        [brunnel = 'bridge'] {
          line-color: black;
        }
      }
    }
    #transportation::fill {
      ['mapnik::geometry_type' = 2][zoom >= 4] {
        line-color: @major-lz;
        line-width: @major-z4-width;
        [zoom >= 5] { line-width: @major-z7-width; }
        [zoom >= 6] { line-width: @major-z7-width; }
        [zoom >= 7] { line-width: @major-z7-width; }
        [zoom >= 8] { line-width: @major-z8-width; }
        [zoom >= 9] { line-width: @major-z9-width; }
        [zoom >= 10] { line-width: @major-z10-width; }
        [zoom >= 11] { line-width: @major-z11-width; }
        [zoom >= 12] { line-width: @major-z12-width; }
        [zoom >= 13] {
          line-color: @major-fill;
          line-width: @major-z13-width;
        }
        [zoom >= 14] { line-width: @major-z14-width; }
        [zoom >= 15] { line-width: @major-z15-width; }
        [zoom >= 16] { line-width: @major-z16-width; }
        [zoom >= 17] { line-width: @major-z17-width; }
        [zoom >= 18] { line-width: @major-z18-width; }
        [zoom >= 19] { line-width: @major-z19-width; }
        [zoom >= 20] { line-width: @major-z20-width; }

        line-join: round;
        line-cap: round;
      }
    }
    #roads-text[zoom >= 11] {
      text-name: "[name]";
      text-face-name: @book-fonts;
      text-placement: line;
      text-repeat-distance: 64;
      text-margin: 10;
      text-halo-fill: @major-lz;
      [zoom >= 13] {
        text-halo-fill: @major-fill;
      }
      text-halo-radius: 1.5;
    }
  }

  [class = 'primary'][zoom >= 5][zoom < 8],
  [class = 'secondary'][zoom >= 8][zoom < 12],
  [class = 'tertiary'][zoom >= 12] {
    #transportation-back-casing,
    #transportation::casing {
      ['mapnik::geometry_type' = 2][zoom >= 13] {
        line-color: @lessmajor-casing;
        line-width: @lessmajor-z13-width + 2*@lessmajor-casing-width;
        [zoom >= 14] { line-width: @lessmajor-z14-width + 2*@lessmajor-casing-width; }
        [zoom >= 15] { line-width: @lessmajor-z15-width + 2*@lessmajor-casing-width; }
        [zoom >= 16] { line-width: @lessmajor-z16-width + 2*@lessmajor-casing-width; }
        [zoom >= 17] { line-width: @lessmajor-z17-width + 2*@lessmajor-casing-width; }
        [zoom >= 18] { line-width: @lessmajor-z18-width + 2*@lessmajor-casing-width; }
        [zoom >= 19] { line-width: @lessmajor-z19-width + 2*@lessmajor-casing-width; }
        [zoom >= 20] { line-width: @lessmajor-z20-width + 2*@lessmajor-casing-width; }
        line-join: round;
        #transportation-back-casing {
          line-cap: round;
        }
        [brunnel = 'bridge'] {
          line-color: black;
        }
      }
    }
    #transportation::fill {
      ['mapnik::geometry_type' = 2][zoom >= 5] {
        line-color: @lessmajor-lz;
        line-width: @lessmajor-z5-width;
        [zoom >= 6] { line-width: @lessmajor-z6-width; }
        [zoom >= 7] { line-width: @lessmajor-z7-width; }
        [zoom >= 8] { line-width: @lessmajor-z8-width; }
        [zoom >= 9] { line-width: @lessmajor-z9-width; }
        [zoom >= 10] { line-width: @lessmajor-z10-width; }
        [zoom >= 11] { line-width: @lessmajor-z11-width; }
        [zoom >= 12] { line-width: @lessmajor-z12-width; }
        [zoom >= 13] {
          line-color: @lessmajor-fill;
          line-width: @lessmajor-z13-width;
        }
        [zoom >= 14] { line-width: @lessmajor-z14-width; }
        [zoom >= 15] { line-width: @lessmajor-z15-width; }
        [zoom >= 16] { line-width: @lessmajor-z16-width; }
        [zoom >= 17] { line-width: @lessmajor-z17-width; }
        [zoom >= 18] { line-width: @lessmajor-z18-width; }
        [zoom >= 19] { line-width: @lessmajor-z19-width; }
        [zoom >= 20] { line-width: @lessmajor-z20-width; }

        line-join: round;
        line-cap: round;
      }
    }
    #roads-text[zoom >= 13] {
      text-name: "[name]";
      text-face-name: @book-fonts;
      text-placement: line;
      text-repeat-distance: 64;
      text-margin: 10;
      text-halo-fill: @lessmajor-fill;
      text-halo-radius: 1.5;
    }
  }

  [class = 'primary'][zoom >= 4][zoom < 5],
  [class = 'secondary'][zoom >= 6][zoom < 8],
  [class = 'tertiary'][zoom >= 8][zoom < 12],
  [class = 'minor'][zoom >= 12],
  [class = 'unknown'][zoom >= 12] {
    #transportation-back-casing,
    #transportation::casing {
      ['mapnik::geometry_type' = 2][zoom >= 14] {
        line-color: @minor-casing;
        line-width: @minor-z13-width + 2*@major-casing-width;
        [zoom >= 14] { line-width: @minor-z14-width + 2*@minor-casing-width; }
        [zoom >= 15] { line-width: @minor-z15-width + 2*@minor-casing-width; }
        [zoom >= 16] { line-width: @minor-z16-width + 2*@minor-casing-width; }
        [zoom >= 17] { line-width: @minor-z17-width + 2*@minor-casing-width; }
        [zoom >= 18] { line-width: @minor-z18-width + 2*@minor-casing-width; }
        [zoom >= 19] { line-width: @minor-z19-width + 2*@minor-casing-width; }
        [zoom >= 20] { line-width: @minor-z20-width + 2*@minor-casing-width; }
        line-join: round;
        #transportation-back-casing {
          line-cap: round;
        }
        [brunnel = 'bridge'] {
          line-color: black;
        }
      }
    }
    #transportation::fill {
      ['mapnik::geometry_type' = 2][zoom >= 4] {
        line-color: @minor-lz;
        line-width: @minor-z4-width;
        [zoom >= 5] { line-width: @minor-z5-width; }
        [zoom >= 6] { line-width: @minor-z6-width; }
        [zoom >= 7] { line-width: @minor-z7-width; }
        [zoom >= 8] { line-width: @minor-z8-width; }
        [zoom >= 9] { line-width: @minor-z9-width; }
        [zoom >= 10] { line-width: @minor-z10-width; }
        [zoom >= 11] { line-width: @minor-z11-width; }
        [zoom >= 12] { line-width: @minor-z12-width; }
        [zoom >= 13] { line-width: @minor-z13-width; }
        [zoom >= 14] {
          line-color: @minor-fill;
          line-width: @minor-z14-width;
        }
        [zoom >= 15] { line-width: @minor-z15-width; }
        [zoom >= 16] { line-width: @minor-z16-width; }
        [zoom >= 17] { line-width: @minor-z17-width; }
        [zoom >= 18] { line-width: @minor-z18-width; }
        [zoom >= 19] { line-width: @minor-z19-width; }
        [zoom >= 20] { line-width: @minor-z20-width; }

        line-join: round;
        line-cap: round;
      }
      ['mapnik::geometry_type' = 3][zoom >= 16] {
        line-color: @minor-fill;
        line-width: @minor-casing-width;
      }
    }
    #roads-text[zoom >= 15] {
      text-name: "[name]";
      text-face-name: @book-fonts;
      text-placement: line;
      text-repeat-distance: 64;
      text-margin: 10;
      text-halo-fill: @minor-fill;
      text-halo-radius: 1.5;
    }
  }

  [class = 'service'][zoom >= 15] {
    #transportation-back-casing,
    #transportation::casing {
      ['mapnik::geometry_type' = 2] {
        line-color: @service-casing;
        line-width: @service-z15-width + 2*@service-casing-width;
        [zoom >= 16] { line-width: @service-z16-width + 2*@service-casing-width; }
        [zoom >= 17] { line-width: @service-z17-width + 2*@service-casing-width; }
        [zoom >= 18] { line-width: @service-z18-width + 2*@service-casing-width; }
        [zoom >= 19] { line-width: @service-z19-width + 2*@service-casing-width; }
        [zoom >= 20] { line-width: @service-z20-width + 2*@service-casing-width; }
        line-join: round;
        #transportation-back-casing {
          line-cap: round;
        }
        [brunnel = 'bridge'] {
          line-color: black;
        }
      }
    }
    #transportation::fill {
      ['mapnik::geometry_type' = 2] {
        line-color: @service-fill;
        line-width: @service-z15-width;
        [zoom >= 16] { line-width: @service-z16-width; }
        [zoom >= 17] { line-width: @service-z17-width; }
        [zoom >= 18] { line-width: @service-z18-width; }
        [zoom >= 19] { line-width: @service-z19-width; }
        [zoom >= 20] { line-width: @service-z20-width; }

        line-join: round;
        line-cap: round;
      }
      ['mapnik::geometry_type' = 3][zoom >= 16] {
        line-color: @service-fill;
        line-width: @service-casing-width;
      }
    }
    #roads-text[zoom >= 15] {
      text-name: "[name]";
      text-face-name: @book-fonts;
      text-placement: line;
      text-repeat-distance: 64;
      text-margin: 10;
      text-halo-fill: @service-fill;
      text-halo-radius: 1.5;
    }
  }

  [class = 'path'][zoom >= 15] {
    #transportation-back-casing,
    #transportation::casing {
      ['mapnik::geometry_type' = 2] {
        line-color: #777;
        line-width: 3.7;
        [zoom >= 16] {
          line-width: 5.2;
        }
        [zoom >= 17] {
          line-width: 7.6;
        }
        [zoom >= 18] {
          line-width: 9.6;
        }
        [zoom >= 19] {
          line-width: 11.6;
        }
        line-join: round;
        #transportation-back-casing {
          line-cap: round;
        }
        [brunnel = 'bridge'] {
          line-color: black;
        }
      }
      ['mapnik::geometry_type' = 3] {
        line-color: #777;
        line-width: 1.2;
        [zoom >= 17] {
          line-width: 1.6;
        }
      }
    }
    #transportation::fill {
      ['mapnik::geometry_type' = 2] {
        line-color: #ddd;
        line-width: 2.5;
        [zoom >= 16] {
          line-width: 4;
        }
        [zoom >= 17] {
          line-width: 6;
        }
        [zoom >= 18] {
          line-width: 8;
        }
        [zoom >= 19] {
          line-width: 10;
        }
        line-join: round;
        line-cap: round;
      }
      ['mapnik::geometry_type' = 3] {
        polygon-fill: #ddd;
      }
    }
  }

  [class = 'rail'][zoom >= 5],
  [class = 'narrow_gauge'][zoom >= 6] {
    [zoom < 10] {
      #transportation::fill {
        line-color: #888;
        line-width: .3;
        [zoom >= 6] { line-width: 0.4; }
        [zoom >= 7] { line-width: 0.6; }
        [zoom >= 8] { line-width: 0.8; }
        [zoom >= 9] { line-width: 1.1; }
        line-join: round;
        line-cap: round;
      }
    }
    [zoom >= 10] {
      /* By using ::casing on lower zooms and ::fill on higher zooms, we can
         reduce the impact of roads parallel to roads hiding them at low zooms,
         while maintaining a more appropriate ordering at high zooms */
      #transportation::casing[zoom < 13],
      #transportation::fill[zoom >= 13], {
        outer/line-width: 1.6;
        outer/line-color: #888888;
        inner/line-color: #fafafa;
        inner/line-dasharray: 5,5;
        inner/line-width: .8;
        [zoom >= 11] {
          outer/line-width: 1.8;
          outer/line-color: #666666;
          inner/line-color: #fafafa;
          inner/line-dasharray: 6,6;
          inner/line-width: .9;
        }
        [zoom >= 12] {
          outer/line-width: 2;
          outer/line-color: #555555;
          inner/line-color: #fafafa;
          inner/line-dasharray: 7,7;
          inner/line-width: 1;
        }
        inner/line-join: round;
      }
    }
  }
}
