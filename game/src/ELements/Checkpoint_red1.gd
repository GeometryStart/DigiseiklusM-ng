extends Area2D
<<<<<<< HEAD


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
=======
export(String, FILE, "*.tscn") var level_scene
export (Vector2) var teleport_location = Vector2(3819.238, 820.047)


var isCheckpoint1 = true

func _physics_process(delta):
	
	
	var bodies = get_overlapping_bodies()
	
	for body in bodies:
		if body.name == "Player":
			get_tree().change_scene(level_scene)

		
>>>>>>> muudetud Chippy teleportimine ühel levelil
