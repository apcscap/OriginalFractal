public void setup() {
	size(500,500);
	noStroke();
}
int x = 250;
int y = 250;
int s = 100;
int l = 400;
void draw() {
	background(0);
	fractal(x, y, s, l);
}
public void mouseMoved() {
	x = mouseX;
	y = mouseY;
}
public void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  s += -10*e;
  l += -20*e;
  println(e);
}
public void fractal(int x, int y, int s, int len) {
	if(len > 5) {
		ellipse(x, y, s, s);
		fractal(x+s-(s/4), y, s/2, len/2);
		fractal(x-s+(s/4), y, s/2, len/2);
		fractal(x, y+s-s/4, s/2, len/2);
		fractal(x, y-s+s/4, s/2, len/2);
	}
}