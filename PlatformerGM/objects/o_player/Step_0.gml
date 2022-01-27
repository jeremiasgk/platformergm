//Get Player Input
left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);
keyPressed_jump = keyboard_check(vk_space);

//Calculate Movement
var keyPressed = right - left;
var grounded = place_meeting(x,y+1,o_wall);

//temporary values
var gAcc = 0.1;
var gDecc = 0.12;
var airAcc = 0.09;
var airDecc = 0.1;

if (grounded) {
//Jump
	jump(key_jump, jump_value);
//Smoothness Jump
	entityAcceleration(keyPressed, gAcc, gDecc, maxSp);
} else {
	vsp += grv;
	entityAcceleration(keyPressed, airAcc, airDecc, maxSp/1.5);
}

if vsp < 0 and !keyPressed_jump vsp = max(vsp, -jump_value/1.8);

//Horizontal smooth Movement
entityAcceleration(keyPressed, acc, decc, maxSp);



plCollisions(o_wall);