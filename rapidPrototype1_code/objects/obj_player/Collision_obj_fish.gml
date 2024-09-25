/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 36CF5904
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "fishObtained"
fishObtained += 1;

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 54F103E6
/// @DnDArgument : "msg" ""fish: " + string(fishObtained)"
show_debug_message(string("fish: " + string(fishObtained)));

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 2807D142
/// @DnDApplyTo : other
with(other) instance_destroy();