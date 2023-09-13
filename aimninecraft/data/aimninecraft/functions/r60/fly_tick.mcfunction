tag @s add current_missile
execute as @e if score @s whoami_ids = @e[tag=current_missile,limit=1] aimninecraft_missile_track run tag @s add missile_target

execute at @s positioned ~ ~1 ~ facing entity @e[tag=missile_target,limit=1] eyes as @e[tag=missile_target,limit=1] run function aimninecraft:zprivate/raycast

scoreboard players set $cosCe6 anglecheck_var 642787
tag @s add anch_source
tag @e[tag=missile_target,limit=1] add anch_target
function anglecheck:check_one_by_motion
tag @s remove anch_source
tag @e[tag=missile_target,limit=1] remove anch_target

execute unless score $found anglecheck_var matches 0 unless score $raycast_hit aimninecraft_var matches 1 if entity @e[tag=missile_target,limit=1] run function aimninecraft:r60/guide

execute as @s[tag=!fuzed] at @s if entity @e[distance=..3.5,tag=missile_target,limit=1] run function aimninecraft:r60/trigger_proxy
tag @e[tag=missile_target] remove missile_target
tag @s remove current_missile