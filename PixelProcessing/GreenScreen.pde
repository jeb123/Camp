class GreenScreen {

  PImage foreground; //this one's the green screen
  PImage background; //this is the background we replace green with

  GreenScreen(PImage foreground, PImage background) {
    this.foreground = foreground;
    this.background = background;
  }

  void display() {
    size(background.width, foreground.height);
    image(background, 0, 0);
    loadPixels();
    removeGreen(foreground);
    overlay(foreground);
    updatePixels();
  }

  void removeGreen(PImage img) {
    background(255);
    for (int i = 0; i < img.pixels.length; i++) {
      float r = red(img.pixels[i]);
      float g = green(img.pixels[i]);
      float b = blue(img.pixels[i]);

      // alternative if (g > r && g > b)
      if (g > r+15 && g > b+55) { 
        img.pixels[i] = color(0, 0, 0, 0);
      }
    }
  }

  void overlay(PImage img) {
    for (int x = 0; x < img.width; x++) {
      for (int y = 0; y < img.height; y++) {
        int location = x + y * img.width;
        float r = red(img.pixels[location]);
        float g = green(img.pixels[location]);
        float b = blue(img.pixels[location]);
        float a = alpha(img.pixels[location]);
        if (false == (r == 0 && g == 0 && b == 0 && a == 0)) {
          pixels[x + y * img.width] = img.pixels[location];
        }
      }
    }
  }
}
