execute anchored eyes facing entity @e[tag=anch_target,limit=1] eyes positioned 0. 0. 0. run summon marker ^ ^ ^1 {Tags:["anch_target_norm"]}

execute store result score $Fx anglecheck_var run data get entity @e[tag=anch_direction_norm,limit=1] Pos[0] 1000
execute store result score $Fy anglecheck_var run data get entity @e[tag=anch_direction_norm,limit=1] Pos[1] 1000
execute store result score $Fz anglecheck_var run data get entity @e[tag=anch_direction_norm,limit=1] Pos[2] 1000

execute store result score $Tx anglecheck_var run data get entity @e[tag=anch_target_norm,limit=1] Pos[0] 1000
execute store result score $Ty anglecheck_var run data get entity @e[tag=anch_target_norm,limit=1] Pos[1] 1000
execute store result score $Tz anglecheck_var run data get entity @e[tag=anch_target_norm,limit=1] Pos[2] 1000

# tellraw @a ["",{"text":"DEBUG: "},{"score":{"name":"$Fx","objective":"anglecheck_var"}},",",{"score":{"name":"$Fy","objective":"anglecheck_var"}},",",{"score":{"name":"$Fz","objective":"anglecheck_var"}}]
# tellraw @a ["",{"text":"DEBUG: "},{"score":{"name":"$Tx","objective":"anglecheck_var"}},",",{"score":{"name":"$Ty","objective":"anglecheck_var"}},",",{"score":{"name":"$Tz","objective":"anglecheck_var"}}]

scoreboard players operation $Tx anglecheck_var *= $Fx anglecheck_var
scoreboard players operation $Ty anglecheck_var *= $Fy anglecheck_var
scoreboard players operation $Tz anglecheck_var *= $Fz anglecheck_var

# dotp scaled by 1000000
scoreboard players operation $dotp anglecheck_var = $Tx anglecheck_var
scoreboard players operation $dotp anglecheck_var += $Ty anglecheck_var
scoreboard players operation $dotp anglecheck_var += $Tz anglecheck_var

scoreboard players set $found anglecheck_var 0
execute if score $cosCe6 anglecheck_var <= $dotp anglecheck_var run scoreboard players set $found anglecheck_var 1

# tellraw @a ["",{"text":"DEBUG: "},{"score":{"name":"$found","objective":"anglecheck_var"}}]

kill @e[tag=anch_target_norm]
kill @e[tag=anch_direction_norm]