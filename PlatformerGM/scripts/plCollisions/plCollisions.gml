// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function plCollisions(collider){
	//Horizontal Collision
	if(place_meeting(x+hsp,y,collider)) {
	
		while(!place_meeting(x+sign(hsp),y,collider)) {
			x = x + sign(hsp);
		}
		
		hsp = 0;
	
	}
	x = x + hsp;
	
	//Vertical Collision
	if(place_meeting(x,y+vsp,collider)) {
	
		while(!place_meeting(x,y+sign(vsp),collider)) {
			y = y + sign(vsp);
		}
		
		vsp = 0;
	}
	y = y + vsp;
}