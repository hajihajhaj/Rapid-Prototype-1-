/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6AF548C9
/// @DnDArgument : "var" "playerLives"
/// @DnDArgument : "value" "3"
if(playerLives == 3)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7601D991
	/// @DnDParent : 6AF548C9
	/// @DnDArgument : "sprite" "sp_3hearts"
	/// @DnDSaveInfo : "sprite" "sp_3hearts"
	draw_sprite(sp_3hearts, 0, 0, 0);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 64EC5A04
/// @DnDArgument : "var" "playerLives"
/// @DnDArgument : "value" "2"
if(playerLives == 2)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0BA1F92D
	/// @DnDParent : 64EC5A04
	/// @DnDArgument : "sprite" "sp_2hearts"
	/// @DnDSaveInfo : "sprite" "sp_2hearts"
	draw_sprite(sp_2hearts, 0, 0, 0);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6EC8233C
/// @DnDArgument : "var" "playerLives"
/// @DnDArgument : "value" "1"
if(playerLives == 1)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 105A2E9B
	/// @DnDParent : 6EC8233C
	/// @DnDArgument : "sprite" "sp_1heart"
	/// @DnDSaveInfo : "sprite" "sp_1heart"
	draw_sprite(sp_1heart, 0, 0, 0);
}

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 269A17EE
/// @DnDArgument : "x" "450"
/// @DnDArgument : "y" "-6"
/// @DnDArgument : "sprite" "sp_fishDisplay"
/// @DnDSaveInfo : "sprite" "sp_fishDisplay"
draw_sprite(sp_fishDisplay, 0, 450, -6);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 06ADC70C
/// @DnDArgument : "var" "obj_player.fishObtained"
/// @DnDArgument : "op" "2"
if(obj_player.fishObtained > 0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 5A6638BE
	/// @DnDParent : 06ADC70C
	/// @DnDArgument : "x" "450"
	/// @DnDArgument : "xscale" "2"
	/// @DnDArgument : "yscale" "2"
	/// @DnDArgument : "sprite" "sp_fish"
	/// @DnDSaveInfo : "sprite" "sp_fish"
	draw_sprite_ext(sp_fish, 0, 450, 0, 2, 2, 0, $FFFFFF & $ffffff, 1);
}