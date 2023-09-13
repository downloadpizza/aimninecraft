tag @s add current_shooter

execute as @e if score @s whoami_ids = @e[tag=current_shooter,limit=1] aimninecraft_shooter_track run tag @s add shooter_target

# execute unless entity @e[tag=shooter_track,limit=1] run say no target
# execute if entity @e[tag=shooter_target,limit=1] run say has target

execute unless entity @e[tag=shooter_target,limit=1] run function aimninecraft:r60/acquire
execute if entity @e[tag=shooter_target,limit=1] run function aimninecraft:r60/hold

tag @e[tag=shooter_target] remove shooter_target
tag @s remove current_shooter