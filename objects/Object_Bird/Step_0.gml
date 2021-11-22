/// @description Insert description here
// You can write your code in this editor
x = x + birdXVelocity;
if (self.x >= room_width) {
	birdXVelocity = -10;
	image_xscale = -1;
}
if (self.x <= 0) {
	birdXVelocity = 10;
	image_xscale = 1;
}