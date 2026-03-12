extends Node

var rockchance = 0.5
var sharkchance = 0.85
var harptime = 3.0
var harpspeed = 200
var length = 300
var money = 1000000
var speed = 0.13
var mode = modes.shop
var inflationmorefish = 1
var inflationcatchmore = 1
var inflationlongerline = 1
var inflationfasterrod = 1
var inflationharpoon = 1
var inflationrock = 1
var inflationshark = 1
var depth = 0
var value_of_reeled_fish = 0
var latestfishvalue = 0

var time_per_spawn = 0.25
var time_left_until_spawn = 0

var caught_fish = 0
var max_fish = 2

var fishup = 0
var harpoonup = 0
var catchup = 0
var speedup = 0
var longerup = 0
var lessroccks = 0
var lesssharkss = 0

enum modes {
	descending,
	ascending,
	shop,
	collection,
}

var shock = 0

var collection = {
	"fish_1": false,
	"fish_2": false,
	"fish_3": false,
	"fish_4": false,
	"fish_5": false,
	"fish_6": false,
	"fish_7": false,
	"fish_8": false,
	"fish_9": false,
	"fish_10": false,
	"fish_11": false,
	"fish_12": false,
	"fish_13": false,
	"fish_14": false,
	"fish_15": false,
	"fish_16": false,
}
