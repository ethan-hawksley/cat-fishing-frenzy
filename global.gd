extends Node

var money = 1000
var length = 10

var speed = 0.1
var mode = modes.shop
var inflation = 1

var time_per_spawn = 1
var time_left_until_spawn = 0

enum modes {
	descending,
	ascending,
	shop,
}
