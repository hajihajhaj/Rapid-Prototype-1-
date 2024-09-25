/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6116999E
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "playerLives"
playerLives += -1;

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 3446F99B
/// @DnDArgument : "msg" ""lives: " + string(playerLives)"
show_debug_message(string("lives: " + string(playerLives)));

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 532A2DCA
/// @DnDArgument : "x" "startingX"
/// @DnDArgument : "y" "startingY"
x = startingX;
y = startingY;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 27A60ACA
/// @DnDArgument : "var" "playerLives"
if(playerLives == 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 48EEC0CC
	/// @DnDParent : 27A60ACA
	instance_destroy();

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 6528166A
	/// @DnDParent : 27A60ACA
	/// @DnDArgument : "room" "rm_loser"
	/// @DnDSaveInfo : "room" "rm_loser"
	room_goto(rm_loser);
}