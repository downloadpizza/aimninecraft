scoreboard players set $cosCe6 anglecheck_var 992546
execute run function anglecheck:find_one
execute at @s positioned ~ ~1.5 ~ facing entity @e[tag=anch_found,limit=1] eyes as @e[tag=anch_found,limit=1] run function aimninecraft:zprivate/raycast
execute unless score $raycast_hit aimninecraft_var matches 1 store result score @s aimninecraft_shooter_track as @e[tag=anch_found,limit=1] run function whoami:whoami
tag @e[tag=anch_found] remove anch_found