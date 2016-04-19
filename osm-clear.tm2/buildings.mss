#buildings[zoom >= 13] {
  building-fill: #e3dbdb;
  [zoom >= 14] {
    building-height: "[render_height]*2";
  }
  [zoom >= 15] {
    building-height: "[render_height]*3";
  }
  [zoom >= 16] {
    building-height: "[render_height]*3.5";
  }
  [zoom >= 17] {
    building-height: "[render_height]*4";
  }
}