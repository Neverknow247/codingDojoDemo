extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# warning-ignore:unused_argument
func _process(delta):
	if Input.is_action_pressed("ui_down"):
		position.y+= 1
	if Input.is_action_pressed("ui_up"):
		position.y-=1
	if Input.is_action_pressed("ui_right"):
		position.x+= 1
	if Input.is_action_pressed("ui_left"):
		position.x-=1


func _on_Area2D_body_entered(body):
	body.queue_free()
	scale*=1.25
