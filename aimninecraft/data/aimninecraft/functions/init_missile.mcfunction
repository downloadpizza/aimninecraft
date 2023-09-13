tag @s add missile_init

tag @e[type=!firework_rocket,sort=nearest,limit=1] add shooter
scoreboard players operation @s aimninecraft_missile_track = @e[tag=shooter,limit=1] aimninecraft_shooter_track
tag @e[tag=shooter] remove shooter

execute if predicate aimninecraft:is_r60 run function aimninecraft:r60/init