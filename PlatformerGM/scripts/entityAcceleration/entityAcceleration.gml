// @param keyPressed
// @param accel
// @param deccel
// @param maxHsp
function entityAcceleration(keyPressed, accel, deccel, userMaxHspd){
	if(plIsPressingKeys()){
		hsp = lerp(hsp, userMaxHspd*keyPressed, accel);
	} else {
		hsp = lerp(hsp, 0, deccel);
	}
}
