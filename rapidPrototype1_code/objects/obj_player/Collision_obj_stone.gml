/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 72B9D4D6
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "playerLives"
playerLives += -1;

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 4755BDDE
/// @DnDArgument : "msg" ""lives: " + string(playerLives)"
show_debug_message(string("lives: " + string(playerLives)));

/// @DnDAction : YoYo Games.Movement.Jump_To_Start
/// @DnDVersion : 1
/// @DnDHash : 1F866807
x = xstart;
y = ystart;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 71A7A939
/// @DnDArgument : "var" "playerLives"
if(playerLives == 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0479FCC0
	/// @DnDParent : 71A7A939
	instance_destroy();

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 3565D9EB
	/// @DnDParent : 71A7A939
	/// @DnDArgument : "room" "rm_loser"
	/// @DnDSaveInfo : "room" "rm_loser"
	room_goto(rm_loser);
}