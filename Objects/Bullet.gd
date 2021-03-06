extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var speed = 750


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += transform.x * speed * delta


func _on_Timer_timeout():
	queue_free()

func _on_Bullet_area_entered(area):
	if(area.get_parent().is_in_group("Asteroids")):
		queue_free()
