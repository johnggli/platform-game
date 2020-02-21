tool
extends Area2D


#onready var anim_player: AnimationPlayer = get_node("AnimationPlayer")
onready var anim_player: AnimationPlayer = $AnimationPlayer


export var next_scene: PackedScene


func _get_configuration_warning() -> String:
	return "the next scene property can't be empty" if not next_scene else ""


func teleport() -> void:
	anim_player.play("fade_in")
	yield(anim_player, "animation_finished")
	get_tree().change_scene_to(next_scene)
