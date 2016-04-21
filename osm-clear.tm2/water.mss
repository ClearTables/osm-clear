#ocean, #ocean-lz, #water {
  polygon-fill: @water-color;
}

#waterways {
  [waterway = 'river'][zoom >= 6],
  [waterway = 'canal'][zoom >= 8] {
    line-color: @water-color;
    line-join: round;
    line-cap: round;
    line-width: 0.5;
    [zoom >= 8] {
      line-width: 0.7;
    }
    [zoom >= 10] {
      line-width: 1;
    }
    [zoom >= 12] {
      line-width: 2;
    }
    [zoom >= 14] {
      line-width: 4;
    }
    [zoom >= 16] {
      line-width: 7;
    }
    [zoom >= 18] {
      line-width: 10;
    }
    [zoom >= 19] {
      line-width: 13;
    }
  }
  [waterway = 'stream'][zoom >= 12] {
    line-color: @water-color;
    line-join: round;
    line-cap: round;
    line-width: 0.5;
    [zoom >= 14] {
      line-width: 1;
    }
    [zoom >= 16] {
      line-width: 2;
    }
    [zoom >= 18] {
      line-width: 4;
    }
    [zoom >= 19] {
      line-width: 7;
    }
  }
  [waterway = 'ditch'][zoom >= 14],
  [waterway = 'drain'][zoom >= 14] {
    line-color: @water-color;
    line-join: round;
    line-cap: round;
    line-width: 0.5;
    [zoom >= 16] {
      line-width: 1;
    }
    [zoom >= 18] {
      line-width: 2;
    }
    [zoom >= 19] {
      line-width: 3.5;
    }
  }
}
