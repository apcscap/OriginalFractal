public void setup() {
	size(500,500);
	noStroke();
}
int x = 250;
int y = 250;
int s = 100;
int l = 400;
public void draw() {
	background(0);
	fractal(x, y, s, l);
}
public void mouseMoved() {
	x = mouseX;
	y = mouseY;
}
public void mouseWheel(MouseEvent event) {
  float e1 = event.getCount();
  s += -10*e1;
  l += -20*e1;
  // println(e1);
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