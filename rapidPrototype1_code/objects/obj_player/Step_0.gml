/// @description Insert description here
// You can write your code in this editor

//accesses the funciton handlemovement 
handleMovement();

//movement calculation
var move = key_right - key_left;

//default horizontal speed
hsp = move * walkSpeed;


//default vertical speed
vsp += global.grav;

isGrounded = position_meeting(x, bbox_bottom + 1, obj_col);

//jump button
if (isGrounded && key_jump) {
vsp += jumpForce;	
}

//horizontal collisions
if (place_meeting(x + hsp, y, obj_col)) {
	hsp = 0;
}
else {
x += hsp;	
}

//vertical collisions
var platformBelow = instance_place(x, y + vsp, obj_col);
var platformSide = instance_place(x + hsp, y, obj_col);

var notClipping = !place_meeting(x, y, platformBelow);


if(vsp >= 0) {
		
		if (platformBelow != noone) {
		if (notClipping) {
			
			while (!place_meeting(x, bbox_bottom + 1, platformBelow)) {
			y =+ vsp;	
			}
		
			vsp = 0;
		}
		else { 
		isGrounded = false;
		vsp += global.grav;
		}
	}
}


if (platformSide != noone) {
while (!place_meeting(x + hsp, y, platformSide)) {
	x += sign;
	}
}

// animation 
if (!isGrounded) {
	sprite_index = sp_playerJump;	
} else {

if (hsp == 0) {
sprite_index = sp_playerIdle;	
} else {
sprite_index = sp_playerWalk;
image_speed = 1; 
	}
}


if(hsp != 0) {
	
	image_xscale = sign(hsp);
}

y += vsp;

//fish powerup
if (obj_player.fishObtained = 1) 
{
    walkSpeed = 8;

}


