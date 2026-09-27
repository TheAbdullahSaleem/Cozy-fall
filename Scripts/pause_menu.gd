extends Control

func _ready() -> void:
	# Ensure the menu is hidden when the game starts
	hide()

func _unhandled_input(event: InputEvent) -> void:
	# Look for the default UI cancel action (usually mapped to Escape / Back button)
	if event.is_action_pressed("pause"):
		toggle_pause()

func toggle_pause() -> void:
	# Toggle the paused state of the entire game engine
	get_tree().paused = !get_tree().paused
	
	# Show the menu if paused, hide it if resumed
	visible = get_tree().paused


func _on_resune_button_pressed() -> void:
	toggle_pause()
