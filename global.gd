extends Node

var easymode = 1
var rockchance = 0.05
var sharkchance = 0.95
var harptime = 3.0
var harpspeed = 200
var length = 300
var money = 1000
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
var betterducksmode = false 

enum modes {
	descending,
	ascending,
	shop,
	collection,
}

var shock = 0

var collection_page = 0

var collection: Array[int] = [
	0, 0, 0, 0,  # fish 1-4
	0, 0, 0, 0,  # fish 5-8
	0, 0, 0, 0,  # fish 9-12
	0, 0, 0, 0,  # fish 13-16
	0, 0, 0, 0,  # fish 17-20
	0, 0, 0, 0,  # fish 21-24
	0, 0, 0, 0,  # fish 25-28
	0, 0, 0, 0,  # fish 29-32
]
