/// @description Insert description here
// You can write your code in this editor
if (fishObtained = 1) {
	//destroy the instance
	instance_destroy(obj_stump);
} 

else {
	
	if (keyboard_check(ord("D"))) {
		x -= 32;
		
	}
	if (keyboard_check(ord("S"))) {
		y -= 32;
	}
	
	if (keyboard_check(ord("A"))) {
		x =+ 32;
	}
	
	if (keyboard_check(ord("W"))) {
		y += 32;
	}
}
































