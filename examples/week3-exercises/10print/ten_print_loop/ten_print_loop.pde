size(800, 800);
background(255);
for (int y = 0; y < height; y += 20) {
  for (int x = 0; x < width; x += 20) {
    if (random(1) > 0.5) {
      line(x, y, x+20, y+20);
    } else {
      line(x, y+20, x+20, y);
    }
  }
}
