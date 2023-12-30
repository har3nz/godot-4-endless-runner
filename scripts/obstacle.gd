extends Area2D
func _on_player_entered(body):
	if "Player" in body.name:
		self.global_position = get_node("%SpawnPosition").global_position
