extends Node2D

var player_spawn
export (PackedScene) var player

func _ready():
	var location = teleporter_data.player_location
	var p = player.instance()
	add_child(p)
	p.set_position(location)
	print(p.get_position())
	
	
#
#	p.get_node("AnimatedSprite").position = Vector2(location)
#

#
#	set_process(true)
#	call_deferred("add_child",teleporter_data.get("player_spawn"))
#	if teleporter_data.player_location != get_node("/root/Checkpoint_red1").position:
#		print("player location")
#
	
	
	
