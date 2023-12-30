extends Area2D
func _on_player_entered(body):
	if "Player" in body.name:
		get_tree().reload_current_scene()
