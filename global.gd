extends Node

var harptime = 3.0
var harpspeed = 200
var length = 200
var money = 1000
var speed = 0.1
var mode = modes.shop
var inflation = 1
var depth = 0
var value_of_reeled_fish = 0


var time_per_spawn = 0.3
var time_left_until_spawn = 0

var caught_fish = 0
var max_fish = 2

var fishup = 0
var harpoonup = 0
var catchup = 0
var speedup = 0
var longerup = 0

enum modes {
	descending,
	ascending,
	shop,
}
