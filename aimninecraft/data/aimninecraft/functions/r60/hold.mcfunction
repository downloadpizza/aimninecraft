scoreboard players set $cosCe6 anglecheck_var 642787

tag @s add anch_source
tag @e[tag=shooter_target,limit=1] add anch_target
function anglecheck:check_one_by_facing
tag @s remove anch_source
tag @e[tag=shooter_target,limit=1] remove anch_target

execute at @s anchored eyes facing entity @e[tag=shooter_target,limit=1] eyes as @e[tag=shooter_target,limit=1] run function aimninecraft:zprivate/raycast

execute if score $found anglecheck_var matches 0 run scoreboard players reset @s aimninecraft_shooter_track
execute if score $raycast_hit aimninecraft_var matches 1 run scoreboard players reset @s aimninecraft_shooter_track

execute unless score $found anglecheck_var matches 0 as @s anchored eyes facing entity @e[tag=shooter_target,limit=1] eyes run particle minecraft:dust 0.839 0.212 0.212 0.15 ^ ^ ^2.5 0.02 0.02 0.02 1 10 normal
