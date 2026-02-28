extends Node


var length = 200
var money = 1000
var speed = 0.1
var mode = modes.shop
var inflation = 1

var time_per_spawn = 0.3
var time_left_until_spawn = 0

var caught_fish = 0
var max_fish = 2

enum modes {
	descending,
	ascending,
	shop,
}
