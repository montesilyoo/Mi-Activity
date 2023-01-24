extends KinematicBody

export(NodePath) var animationtree

onready var _anim_tree = get_node(animationtree)

func _physics_process(delta):
	if Input.is_action_pressed("ui_down"):
		_anim_tree["parameters/playback"].travel("Fall A Loop-loop")
	elif Input.is_action_pressed("special"):
		_anim_tree["parameters/playback"].travel("Special-loop")
	elif Input.is_action_pressed("special2"):
		_anim_tree["parameters/playback"].travel("Special 2-loop")
	elif Input.is_action_pressed("ui_up"):
		_anim_tree["parameters/playback"].travel("Getting Up-loop")
	elif Input.is_action_pressed("dodge"):
		_anim_tree["parameters/playback"].travel("Dodging-loop")
	elif Input.is_action_pressed("normal"):
		_anim_tree["parameters/playback"].travel("Normal-loop")
	elif Input.is_action_pressed("ui_left"):
		_anim_tree["parameters/playback"].travel("Hit To Body-loop")
	elif Input.is_action_pressed("ui_right"):
		_anim_tree["parameters/playback"].travel("Standing Idle Looking Ver 2-loop")
	elif Input.is_action_pressed("standingmelee"):
		_anim_tree["parameters/playback"].travel("Standing Melee Attack 360 High-loop")
	else:
		_anim_tree["parameters/playback"].travel("T-Pose-loop")
	
