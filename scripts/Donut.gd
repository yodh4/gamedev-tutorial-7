extends Interactable

@export var sceneName: String

func _ready():
	pass # Replace with function body.

func interact():
	self.queue_free()
	get_tree().change_scene_to_file(str("res://scenes/" + sceneName + ".tscn"))
