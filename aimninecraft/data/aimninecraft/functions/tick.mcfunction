execute as @e[predicate=aimninecraft:is_missile,tag=!missile_init] at @s run function aimninecraft:init_missile

execute as @e[predicate=aimninecraft:r60_loaded] at @s run function aimninecraft:r60/branch

execute as @e[predicate=aimninecraft:is_r60] at @s run function aimninecraft:r60/fly_tick

execute as @e[predicate=!aimninecraft:missile_loaded,predicate=aimninecraft:has_shooter_target] at @s run scoreboard players reset @s aimninecraft_shooter_track