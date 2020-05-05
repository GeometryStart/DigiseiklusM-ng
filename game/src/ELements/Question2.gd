extends Node2D
export (String, FILE, "*.tscn") var level_scene
export (String) var question2
export (String) var answer1
export (String) var answer2
export (String) var answer3


var questionList2 = { 
	1:{
	"number": "4.",
	"label": "Kuidas reageerid kui sõber kirjutab sulle Messengeris: “Olen lollakas ja hüppan aknast alla.”?",
	"answer1": "Kirjutad vastuseks naeratavad emojid.",
	"answer_right": "Helistad sõbrale ja uurid, kas see oli ikka tema ise kes kirjutas.",
	"answer2": "Ignoreerid teda."
	},
	2:{
	"number": "5.",
	"label": "Sõber tahab sinult sinu Facebooki konto parooli saada. Kas annad?",
	"answer1": "Kindlasti - ta ju hea sõber!",
	"answer_right": "Üritad leida viisaka võimaluse keelduda.",
	"answer2": "Annad sõbrale vale parooli."
	},
	3:{
	"number": "6.",
	"label": "Sõber ei tea mida tahab?",
	"answer1": "Kindlasti - ta ju hea sõber!",
	"answer_right": "Üritad leida viisaka võimaluse keelduda.",
	"answer2": "Annad sõbrale vale parooli."
	}
}
onready var button_right = get_node("VASTA")

func _ready():
	
	randomize()
	
	var randomList2 = questionList2[randi() % questionList2.size()+1]
	
	question2 = randomList2.get("label")	
	answer1 = randomList2.get("answer1")
	answer2 = randomList2.get("answer2")
	answer3 = randomList2.get("answer_right")
			
	#get_node("Question2").set_text(question2)
	#get_node("Vastusevariant1").set_text(answer1)
	#get_node("Vastusevariant2").set_text(answer2)
	#get_node("Vastusevariant3").set_text(answer3)
	
	
	button_right.connect("pressed", self, "_on_Vastus3_pressed", [get_name()])
var counter = 0	

	
func _on_Vastus3_pressed():
	counter += 1

func _on_VASTA_pressed():
	
	if counter >= 1:
		get_tree().change_scene(level_scene)
	else:
		get_tree().change_scene("res://src/ELements/Question_AnswerWrong.tscn")

