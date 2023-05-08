extends Spatial

var mesh_instance = null

func _ready():
	mesh_instance = get_node("Button")

func _on_Area_body_entered(body):
	hide_object()
	change_color()
	turn_on()

func hide_object():
	if $violin != null:
		$violin.queue_free()

func turn_on():
	if $violin != null:
		if !$KaChing.playing:
			$KaChing.play()
		
func change_color():
	var material = SpatialMaterial.new()
	material.albedo_color = Color.red
	mesh_instance.material_override = material
