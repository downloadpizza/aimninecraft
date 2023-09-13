scoreboard objectives add anglecheck_const dummy
scoreboard objectives add anglecheck_var dummy

scoreboard players set $1000000 anglecheck_const 1000000

# scale 10^6
# $cos4  997564
# $cos10 984807
# $cos45 707106
# $cos60 5000000
# $cos90 0

# refers to one direction. So 45 degrees is 45 degrees from the center 90 total
# scoreboard players set $cosCe6 anglecheck_var 997564
scoreboard players set $precheckAngle anglecheck_var 10