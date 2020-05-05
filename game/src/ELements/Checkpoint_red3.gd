extends Area2D
export(String, FILE, "*.tscn") var level_scene
export (Vector2) var teleport_location = Vector2(11638.828, 703.935)
var isCheckpoint3 = true
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	
	for body in bodies:
		if body.name == "Player":
			get_tree().change_scene(level_scene)
			Checkpoint_red2.isCheckpoint2 = false
			
