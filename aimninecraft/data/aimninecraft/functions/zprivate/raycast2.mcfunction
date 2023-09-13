scoreboard players add $raycast_count aimninecraft_var 1

execute unless block ~ ~ ~ #aimninecraft:nonsolid run scoreboard players set $raycast_hit aimninecraft_var 1 
#particle smoke ~ ~ ~ 0 0 0 0 1

#tellraw @a ["",{"text":"("},{"score":{"name":"$raycast_count","objective":"aimninecraft_var"}},{"text":")"}]

execute positioned ^ ^ ^2 unless entity @s[distance=..2.0] if score $raycast_count aimninecraft_var matches ..400 run function aimninecraft:zprivate/raycast2