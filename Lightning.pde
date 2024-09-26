int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

void setup() {
  size(300, 300); // Set the size of the canvas
  strokeWeight(2); // Set the thickness of the lightning bolt
  drawClouds(); // Draw the clouds in the background
}

void draw() {
  stroke((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256)); // Set stroke color to random

  // While loop to draw the lightning bolt
  while (endX < width) { 
    endX = startX + (int)(Math.random() * 10); // Randomly change endX from 0 to 9
    endY = startY + (int)(Math.random() * 19) - 9; // Randomly change endY from -9 to 9
    line(startX, startY, endX, endY); // Draw the line from (startX, startY) to (endX, endY)
    startX = endX; // Update startX to be the new endX
    startY = endY; // Update startY to be the new endY
  }
}

void mousePressed() {
  // Reset the coordinates when the mouse is pressed
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
  background(0); // Clear the screen
  drawClouds(); // Redraw the clouds
}

void drawClouds() {
  // Set cloud color
  fill(200);
  noStroke();
  
  // Draw clouds
  ellipse(60, 50, 160, 100);  // Cloud 1
  ellipse(140, 70, 180, 110); // Cloud 2
  ellipse(260, 50, 200, 120); // Cloud 3
}

