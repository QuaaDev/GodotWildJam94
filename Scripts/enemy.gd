extends Node2D
class_name Enemy
var tarjet_place : Vector2i
const speed : int = 100


func _physics_process(delta: float) -> void:
	#This make the enemy walk
	if position.x < tarjet_place.x:
		position.x += speed * delta
	elif position.x > tarjet_place.x:
		position.x -= speed * delta

	if position.y < tarjet_place.y:
		position.y += speed*delta
	elif position.y > tarjet_place.y:
		position.y -= speed*delta
