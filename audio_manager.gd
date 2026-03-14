extends Node

var background_player: AudioStreamPlayer

var sfx_players: Array[AudioStreamPlayer] =[]
var num_sfx_players = 8

var sounds = {
	"catch": preload("res://assets/audio/catch.ogg"),
	"click": preload("res://assets/audio/click.ogg"),
	"money": preload("res://assets/audio/money.ogg"),
	"page_turn": preload("res://assets/audio/page_turn.ogg"),
	"rock": preload("res://assets/audio/rock.ogg"),
	"shark": preload("res://assets/audio/shark.ogg"),
	"splash": preload("res://assets/audio/splash.ogg"),
	"waves": preload("res://assets/audio/waves.ogg"),
	"zap": preload("res://assets/audio/zap.ogg"),
}

var waves_loop = preload("res://assets/audio/waves.ogg")

func _ready() -> void:
	background_player = AudioStreamPlayer.new()
	background_player.bus = "Master"
	background_player.volume_db = -10.0
	add_child(background_player)
	
	for i in num_sfx_players:
		var player = AudioStreamPlayer.new()
		player.bus = "Master"
		add_child(player)
		sfx_players.append(player)
		
	play_bgm()

func play_bgm() -> void:
	if not background_player.playing:
		background_player.stream = waves_loop
		background_player.play()

func stop_bgm() -> void:
	background_player.stop()

func play_sfx(sound_name: String, volume_db: float = 0.0) -> void:
	if not sounds.has(sound_name):
		return
	for player in sfx_players:
		if not player.playing:
			player.stream = sounds[sound_name]
			player.volume_db = volume_db
			player.play()
			return
