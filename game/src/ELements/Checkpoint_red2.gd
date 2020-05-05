extends Area2D
export(String, FILE, "*.tscn") var level_scene
var isCheckpoint2 = true
export (Vector2) var teleport_location = Vector2(7647.313, 818.774)

func _physics_process(delta):
	var bodies = get_overlapping_bodies()

	for body in bodies:
		if body.name == "Player":
			get_tree().change_scene(level_scene)
			Checkpoint_red1.isCheckpoint1 = false
