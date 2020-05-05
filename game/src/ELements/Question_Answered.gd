extends Node2D

func _on_Play_pressed():
	
	if Checkpoint_red1.isCheckpoint1:
		get_tree().change_scene("res://src/Levels/Level1.tscn")
		teleporter_data.player_location = Checkpoint_red1.teleport_location
		print("CHeckpoint1 läbitud")
	elif Checkpoint_red2.isCheckpoint2:
		get_tree().change_scene("res://src/Levels/Level1.tscn")
		teleporter_data.player_location = Checkpoint_red2.teleport_location
	elif Checkpoint_red3.isCheckpoint3:
		get_tree().change_scene("res://src/Levels/Level1.tscn")
		teleporter_data.player_location = Checkpoint_red3.teleport_location
	
func _on_Again_pressed():
	
	get_tree().change_scene("res://CHeckpoint0_1.tscn")
