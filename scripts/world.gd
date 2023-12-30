extends Node

var obstacle = preload("res://scenes/tilemap.tscn")

var max_obstacle = 20

func _ready() -> void:
	for i in range(max_obstacle):
		var Obstacle_scene = obstacle.instantiate()
		Obstacle_scene.global_position = Vector2(1582 *(i+1), -287)
		$Obstacle_container.add_child(Obstacle_scene)
