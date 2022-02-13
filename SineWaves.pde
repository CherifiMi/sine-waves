
float[] angles;
float r = 4.0;

void setup() { 
    background(20);
    size(600,400);
    var total = floor(width/(r*2));
    for (int i = 0; i < total+1; ++i) {
        angles[i] = map(i, 0, total, 0, (0+440/1000) * PI*2);
    }
     
}

void draw() {
    background(0);
  translate(300, 200);
  fill(252, 238, 33);
  stroke(252, 238, 33);


  beginShape();
  for (int i = 0; i < 10; ++i) {
      var y = map(sin(angles[i]), -1, 1, -200, 200);
      strokeWeight(4);
      var x = map(i, 0, angles.length, -300, 300);
      circle(x, y, r * 2);
      angles[i] += 0.02;
      println("hiiiiii");
  }
  endShape(CLOSE);
  
 
}
