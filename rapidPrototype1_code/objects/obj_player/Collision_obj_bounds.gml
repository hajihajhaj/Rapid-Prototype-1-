/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2DA3CDC0
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "playerLives"
playerLives += -1;

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 2E5DF010
/// @DnDArgument : "msg" ""lives: " + string(playerLives)"
show_debug_message(string("lives: " + string(playerLives)));

/// @DnDAction : YoYo Games.Movement.Jump_To_Start
/// @DnDVersion : 1
/// @DnDHash : 06B3384A
x = xstart;
y = ystart;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 680D9820
/// @DnDArgument : "var" "playerLives"
if(playerLives == 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 232FD9B1
	/// @DnDParent : 680D9820
	instance_destroy();

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 6288B1C7
	/// @DnDParent : 680D9820
	/// @DnDArgument : "room" "rm_loser"
	/// @DnDSaveInfo : "room" "rm_loser"
	room_goto(rm_loser);
}