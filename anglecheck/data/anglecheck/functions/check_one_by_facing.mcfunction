scoreboard players set $found anglecheck_var 0
execute as @e[tag=anch_source,limit=1] at @s if entity @e[tag=anch_target,limit=1] run function anglecheck:zprivate/check_one_by_facing