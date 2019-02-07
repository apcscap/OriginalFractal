public void setup() {
	size(500,500);
}
int size = 500;
public void draw() {
	background(0);
	fractal(250, 250, 100, size);
	// size += 1;
}
public void fractal(int x, int y, int size, int len) {
	if(len > 5) {
		ellipse(x, y, size, size);
		// ellipse(x, y, 10, 10);
		// fractal(x, y, size/1, len/2);
		fractal(x+size-(size/4), y, size/2, len/2);
		fractal(x-size+(size/4), y, size/2, len/2);
		fractal(x, y+size-size/4, size/2, len/2);
		fractal(x, y-size+size/4, size/2, len/2);
	}
}