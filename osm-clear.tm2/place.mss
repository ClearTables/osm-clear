#place[zoom >= 3] {
  [class = 'settlement'][rank = 'city'][zoom >= 3][zoom < 13] {
    shield-name: "[name]";
    shield-face-name: @book-fonts;
    shield-size: 12;
    shield-halo-fill: #fff;
    shield-halo-radius: 1.5;
    shield-unlock-image: true;
    shield-file: url("place-1.svg");
    shield-text-dx: 2;
    shield-text-dy: 2;
    shield-margin: 20;
    shield-placement-type: simple;
    shield-placements: "SE,NE,SW,NW";
    [zoom >= 6] {
      shield-file: url("place-2.svg");
      shield-text-dx: 3.5;
      shield-text-dy: 3.5;
    }
    [zoom >= 8] {
      shield-file: url("place-3.svg");
      shield-text-dx: 5;
      shield-text-dy: 5;
    }
    [zoom >= 10] {
      shield-file: url("place-4.svg");
      shield-text-dx: 6;
      shield-text-dy: 6;
    }
  }
  [class = 'settlement'][rank = 'town'][zoom >= 6][zoom < 14] {
    shield-name: "[name]";
    shield-face-name: @book-fonts;
    shield-size: 12;
    shield-halo-fill: #fff;
    shield-halo-radius: 1.5;
    shield-unlock-image: true;
    shield-file: url("place-1.svg");
    shield-text-dx: 4;
    shield-text-dy: 4;
    shield-margin: 24;
    shield-placement-type: simple;
    shield-placements: "SE,NE,SW,NW";
    [zoom >= 8] {
      shield-file: url("place-2.svg");
      shield-text-dx: 3.5;
      shield-text-dy: 3.5;
    }
    [zoom >= 10] {
      shield-file: url("place-3.svg");
      shield-text-dx: 5;
      shield-text-dy: 5;
    }
  }
  [class = 'settlement'][rank = 'village'][zoom >= 8][zoom < 15] {
    shield-name: "[name]";
    shield-face-name: @book-fonts;
    shield-size: 12;
    shield-halo-fill: #fff;
    shield-halo-radius: 1.5;
    shield-unlock-image: true;
    shield-file: url("place-1.svg");
    shield-text-dx: 3;
    shield-text-dy: 3;
    shield-margin: 24;
    shield-placement-type: dummy;
    [zoom >= 10] {
      shield-file: url("place-2.svg");
      shield-text-dx: 3.5;
      shield-text-dy: 3.5;
    }
  }
  [class = 'settlement'][rank = 'hamlet'][zoom >= 10][zoom < 16] {
    shield-name: "[name]";
    shield-face-name: @book-fonts;
    shield-size: 12;
    shield-halo-fill: #fff;
    shield-halo-radius: 1.5;
    shield-unlock-image: true;
    shield-file: url("place-1.svg");
    shield-text-dx: 3;
    shield-text-dy: 3;
    shield-margin: 24;
    shield-placement-type: dummy;
  }
}