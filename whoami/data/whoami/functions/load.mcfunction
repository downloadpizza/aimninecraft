scoreboard objectives add whoami_ids dummy
scoreboard objectives add whoami_ids_bak dummy
scoreboard objectives add whoami_var dummy

execute unless score $init whoami_var matches 1 run function whoami:set_vars