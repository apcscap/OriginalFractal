public void setup() {
	size(500,500);
}
int s = 400;
public void draw() {
	background(0);
	fractal(250, 250, 100, 400);
	// s += 1;
}
public void fractal(int x, int y, int s, int len) {
	if(len > 5) {
		ellipse(x, y, s, s);
		// ellipse(x, y, 10, 10);
		// fractal(x, y, s/1, len/2);
		fractal(x+s-(s/4), y, s/2, len/2);
		fractal(x-s+(s/4), y, s/2, len/2);
		fractal(x, y+s-s/4, s/2, len/2);
		fractal(x, y-s+s/4, s/2, len/2);
	}
}