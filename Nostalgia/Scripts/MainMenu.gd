extends Control


func _on_ButtonExit_pressed():
	get_tree().quit()

func _on_ButtonCredits_pressed():
	get_tree().change_scene(Global.CREDITS)


func _on_ButtonStart_pressed():
	get_tree().change_scene(Global.CUTSCENE)
