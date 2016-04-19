#aeroway {
  line-color: #888888;
  [aeroway = 'runway'][zoom >= 12] {
    line-width: 4;
    [zoom >= 13] { line-width: 6; }
    [zoom >= 14] { line-width: 12; }
    [zoom >= 15] { line-width: 18; }
    [zoom >= 16] { line-width: 24; }
  }
  [aeroway = 'taxiway'][zoom >= 12] {
    line-width: 2;
    [zoom >= 13] { line-width: 3; }
    [zoom >= 14] { line-width: 4; }
    [zoom >= 15] { line-width: 6; }
    [zoom >= 16] { line-width: 8; }
  }
}