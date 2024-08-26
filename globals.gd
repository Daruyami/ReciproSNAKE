extends Node

# Globals
var tile_width : int = 16
var tile_height : int = 16
var tile_snap_vec : Vector2i = Vector2i(tile_width, tile_height)

func input_general_just_pressed() -> bool:
	return Input.is_action_just_pressed("Select") or Input.is_action_just_pressed("Escape") or Input.is_action_just_pressed("Context") or Input.is_action_just_pressed("Meta")

# Input signaling
func _process(delta: float) -> void:
	monitor_input_all()

func monitor_input_all() -> void:
	monitor_input_select_just_pressed()
	monitor_input_select_just_released()
	monitor_input_escape_just_pressed()
	monitor_input_escape_just_released()
	monitor_input_context_just_pressed()
	monitor_input_context_just_released()
	monitor_input_meta_just_pressed()
	monitor_input_meta_just_released()

func monitor_input_select_just_pressed() -> void:
	if Input.is_action_just_pressed("Select"):
		input_select_just_pressed.emit()

func monitor_input_select_just_released() -> void:
	if Input.is_action_just_released("Select"):
		input_select_just_released.emit()

func monitor_input_escape_just_pressed() -> void:
	if Input.is_action_just_pressed("Escape"):
		input_escape_just_pressed.emit()

func monitor_input_escape_just_released() -> void:
	if Input.is_action_just_released("Escape"):
		input_escape_just_released.emit()

func monitor_input_context_just_pressed() -> void:
	if Input.is_action_just_pressed("Context"):
		input_context_just_pressed.emit()

func monitor_input_context_just_released() -> void:
	if Input.is_action_just_released("Context"):
		input_context_just_released.emit()

func monitor_input_meta_just_pressed() -> void:
	if Input.is_action_just_pressed("Meta"):
		input_meta_just_pressed.emit()

func monitor_input_meta_just_released() -> void:
	if Input.is_action_just_released("Meta"):
		input_meta_just_released.emit()

# Signals
signal input_select_just_pressed
signal input_select_just_released
signal input_escape_just_pressed
signal input_escape_just_released
signal input_context_just_pressed
signal input_context_just_released
signal input_meta_just_pressed
signal input_meta_just_released

signal world_generate(size : Vector2i)

signal round_timer_start
signal round_timer_stop
signal round_timer_abort
signal round_timer_sync(time_left : float, is_running : bool)
signal round_timer_timeout

signal cursor_hover_new(position : Vector2i)
