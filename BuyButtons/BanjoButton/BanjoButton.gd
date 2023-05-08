extends Spatial

var mesh_instance = null
onready var banjobought = 1

func _ready():
	mesh_instance = get_node("Button")

func _on_Area_body_entered(_body):
		hide_object()
		change_color()

func hide_object():
	if $banjo != null:
		$banjo.queue_free()
		turn_on()

func turn_on():
	#print("music play")
	if $banjo == null:
		if !$KaChing.playing:
			$KaChing.play()

func change_color():
	var material = SpatialMaterial.new()
	material.albedo_color = Color.red
	mesh_instance.material_override = material
