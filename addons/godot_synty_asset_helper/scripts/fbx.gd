const MATERIALS = preload("res://addons/godot_synty_asset_helper/scripts/materials.gd")

const SOURCE_DIR = "res://addons/godot_synty_asset_helper/Source_Files/FBX/"
const SCENES_DIR = "res://addons/godot_synty_asset_helper/scenes/"

	
static func get_files() -> Array:
	var dir = DirAccess.open(SOURCE_DIR)
	return Array(dir.get_files()).filter(is_fbx)

static func is_fbx(file): return file.ends_with(".fbx")