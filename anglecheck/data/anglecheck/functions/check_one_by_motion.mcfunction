scoreboard players set $found anglecheck_var 0
data modify storage anglecheck:temp motion set from entity @e[tag=anch_source,limit=1] Motion
execute as @e[tag=anch_source,limit=1] at @s if entity @e[tag=anch_target,limit=1] summon marker run function anglecheck:zprivate/check_one_by_motion