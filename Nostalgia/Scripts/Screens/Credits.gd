extends Control

onready var audio_button_goback = $ColorRect/ButtonGoBack/AudioButtonGoBack

func _on_ButtonGoBack_pressed():
	audio_button_goback.play()


func _on_ButtonGoBack_finished():
	get_tree().change_scene(Global.MAIN_MENU)