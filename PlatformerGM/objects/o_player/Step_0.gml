//Get Player Input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check(vk_space);

//Calculate Movement
var move = key_right - key_left;

hsp = move * walksp;
vsp = vsp + grv;

//jump
if(place_meeting(x,y+1,o_wall) && (key_jump)){
	
	vsp= -7;
	
}

//Horizontal Collision
if(place_meeting(x+hsp,y,o_wall)) {
	
	while(!place_meeting(x+sign(hsp),y,o_wall)) {
		x = x + sign(hsp);
	}
	hsp = 0;
	
}

x = x + hsp;

//Vertical Collision
if(place_meeting(x,y+vsp,o_wall)) {
	
	while(!place_meeting(x,y+sign(vsp),o_wall)) {
		y = y + sign(vsp);
	}
	vsp = 0;
	
}

y = y + vsp;