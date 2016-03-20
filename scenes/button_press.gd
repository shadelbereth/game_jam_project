
extends TextureButton

# member variables here, example:
# var a=2
# var b="textvar"
var croissance = 0
var timer = 0

func _ready():
	# Initialization here
	set_process(true)
	
	




func _on_computer_pressed():
	show()
	get_node('../computer').hide()
	
	
	

#func _on_Ecran_quit_pressed(): 
#	print('oeihobhgrzorgj')
#	get_node('../computer').show()
#	get_node("../Ecran").hide()






func _on_Ecran_input_event( ev ):
	if (ev.type==InputEvent.MOUSE_BUTTON and ev.button_index==BUTTON_LEFT and ev.pressed and croissance == 0 and timer <= 0):
		print("button left press")
		get_node("../doom/mushroom").hide()
		get_node("../doom/mushroom1").show()
		croissance+= 1
		get_node(".").hide()
		get_node("../computer").show()
		timer = 3
	if (ev.type==InputEvent.MOUSE_BUTTON and ev.button_index==BUTTON_LEFT and ev.pressed and croissance == 1 and timer <= 0):
		
		get_node("../doom/mushroom1").hide()
		get_node("../doom/mushroom2").show()
		croissance +=1
		get_node(".").hide()
		get_node("../computer").show()
		timer = 3

func _process(delta):
	if timer > 0:
		timer -= delta

	
#	if (ev.type==InputEvent.MOUSE_BUTTON and ev.button_index==BUTTON_LEFT and ev.pressed):
#		get_node(".").hide()

