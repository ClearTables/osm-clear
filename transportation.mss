.transportation {
  /* Motorways get their own unique styling at all zooms */
  [class = 'motorway'][zoom >= 6] {
    #transportation-back-casing,
    #transportation-lz::casing,
    #transportation::casing {
      line-color: #bd9b00;
      line-width: 3.2;
      [zoom >= 12] {
        line-width: 4.5;
      }
      [zoom >= 13] {
        line-width: 7;
      }
      [zoom >= 15] {
        line-width: 12.4;
      }
      [zoom >= 17] {
        line-width: 20;
      }
      [zoom >= 18] {
        line-width: 23;
      }
      [zoom >= 19] {
        line-width: 29;
      }
      line-join: round;
      #transportation-back-casing {
        line-cap: round;
      }
      [brunnel = 'bridge'] {
        line-color: black;
      }
    }
    #transportation-lz::fill,
    #transportation::fill {
      line-color: #fbd127;
      line-width: 2;
      [zoom >= 12] {
        line-width: 3.5;
      }
      [zoom >= 13] {
        line-width: 6;
      }
      [zoom >= 15] {
        line-width: 10;
      }
      [zoom >= 17] {
        line-width: 18;
      }
      [zoom >= 18] {
        line-width: 21;
      }
      [zoom >= 19] {
        line-width: 27;
      }
      line-join: round;
      line-cap: round;
    }
  }


  [class = 'trunk'][zoom >= 6],
  [class = 'primary'][zoom >= 9],
  [class = 'secondary'][zoom >= 12],
  [class = 'tertiary'][zoom >= 13]
  {
    #transportation-back-casing,
    #transportation-lz::casing,
    #transportation::casing {
      ['mapnik::geometry_type' = 2] {
        line-color: #b9aa87;
        line-width: 3.0;
        [zoom >= 12] {
          line-width: 4.2;
        }
        [zoom >= 13] {
          line-width: 6;
        }
        [zoom >= 15] {
          line-width: 12.4;
        }
        [zoom >= 17] {
          line-width: 20;
        }
        [zoom >= 18] {
          line-width: 23;
        }
        [zoom >= 19] {
          line-width: 29;
        }
        line-join: round;
        #transportation-back-casing {
          line-cap: round;
        }
        [brunnel = 'bridge'] {
          line-color: black;
        }
      }
    }
    #transportation-lz::fill,
    #transportation::fill {
      ['mapnik::geometry_type' = 2] {
        line-color: #f2e1bc;
        line-width: 1.8;
        [zoom >= 12] {
          line-width: 3.5;
        }
        [zoom >= 13] {
          line-width: 5;
        }
        [zoom >= 15] {
          line-width: 10;
        }
        [zoom >= 17] {
          line-width: 18;
        }
        [zoom >= 18] {
          line-width: 21;
        }
        [zoom >= 19] {
          line-width: 27;
        }
        line-join: round;
        line-cap: round;
      }
    }
  }

  [class = 'primary'][zoom >= 6][zoom < 9],
  [class = 'secondary'][zoom >= 9][zoom < 12],
  [class = 'tertiary'][zoom >= 11][zoom < 13],
  [class = 'minor'][zoom >= 12],
  [class = 'unknown'][zoom >= 12]
  {
    #transportation-back-casing,
    #transportation-lz::casing,
    #transportation::casing {
      ['mapnik::geometry_type' = 2] {
        line-color: #777777;
        line-width: 1.6;
        [zoom >= 12] {
          line-width: 2.7;
        }
        [zoom >= 13] {
          line-width: 4.7;
        }
        [zoom >= 15] {
          line-width: 6.2;
        }
        [zoom >= 17] {
          line-width: 13.6;
        }
        [zoom >= 18] {
          line-width: 14.6;
        }
        [zoom >= 19] {
          line-width: 18.6;
        }
        line-join: round;
        #transportation-back-casing {
          line-cap: round;
        }
        [brunnel = 'bridge'] {
          line-color: black;
        }
      }
    }
    #transportation-lz::fill,
    #transportation::fill {
      ['mapnik::geometry_type' = 2] {
        line-color: #ffffff;
        line-width: 1;
        [zoom >= 12] {
          line-width: 2.5;
        }
        [zoom >= 13] {
          line-width: 4;
        }
        [zoom >= 15] {
          line-width: 5;
        }
        [zoom >= 17] {
          line-width: 12;
        }
        [zoom >= 18] {
          line-width: 13;
        }
        [zoom >= 19] {
          line-width: 17;
        }
        line-join: round;
        line-cap: round;
      }
    }
  }
  [class = 'service'][zoom >= 15] {
    #transportation-back-casing,
    #transportation-lz::casing,
    #transportation::casing {
      ['mapnik::geometry_type' = 2] {
        line-color: #777777;
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
    }
    #transportation-lz::fill,
    #transportation::fill {
      ['mapnik::geometry_type' = 2] {
        line-color: #ffffff;
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
    }
  }

  [class = 'path'][zoom >= 15] {
    #transportation-back-casing,
    #transportation-lz::casing,
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
    #transportation-lz::fill,
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

  [class = 'rail'][zoom >= 6],
  [class = 'narrow_gauge'][zoom >= 6] {
    #transportation-back-casing,
    #transportation-lz::casing,
    #transportation::casing {
    }
    #transportation-lz::fill,
    #transportation::fill {
      outer/line-color: #444444;
      outer/line-width: 3;
      outer/line-join: round;
      inner/line-color: #fafafa;
      inner/line-dasharray: 8,8;
      inner/line-width: 1.5;
      inner/line-join: round;
    }
  }
}
