extends Node2D
@export var starting_point_enemy : Vector2i
@export var end_point_enemy : Vector2i
@export var tile_map : TileMapLayer
const enemy = preload("uid://qkroncgha71g")
@onready var time_spawn: Timer = $time_spawn

func _ready() -> void:
	time_spawn.connect("timeout",spawn_enemy)

func spawn_enemy() -> void:
	var new_enemy : Enemy = enemy.instantiate()
	new_enemy.position = tile_map.map_to_local(starting_point_enemy)
	new_enemy.tarjet_place = tile_map.map_to_local(end_point_enemy)
	self.add_child(new_enemy)
