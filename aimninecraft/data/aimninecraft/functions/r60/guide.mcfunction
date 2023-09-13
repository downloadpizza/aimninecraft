
data modify storage aimninecraft:temp motion set from entity @s Motion
execute at @s summon marker run function aimninecraft:zprivate/storemotionnorm
execute as @s facing entity @e[tag=missile_target,limit=1] eyes positioned 0. 0 0. positioned ^ ^ ^1 summon marker run function aimninecraft:zprivate/storemarkerpos

# missile accelerates when we dont fix Vm in place
#execute store result score $Vm aimninecraft_var run data get storage aimninecraft:temp motion[0] 1000000
#scoreboard players operation $Vm aimninecraft_var /= $Vx aimninecraft_var

scoreboard players set $Vm aimninecraft_var 1610

#tellraw @a ["",{"text":"("},{"score":{"name":"$Vm","objective":"aimninecraft_var"}},{"text":")"}]

scoreboard players operation $DVx aimninecraft_var = $Dx aimninecraft_var
scoreboard players operation $DVx aimninecraft_var *= $Vx aimninecraft_var
scoreboard players operation $DVy aimninecraft_var = $Dy aimninecraft_var
scoreboard players operation $DVy aimninecraft_var *= $Vy aimninecraft_var
scoreboard players operation $DVz aimninecraft_var = $Dz aimninecraft_var
scoreboard players operation $DVz aimninecraft_var *= $Vz aimninecraft_var

scoreboard players operation $DVdp aimninecraft_var = $DVx aimninecraft_var
scoreboard players operation $DVdp aimninecraft_var += $DVy aimninecraft_var
scoreboard players operation $DVdp aimninecraft_var += $DVz aimninecraft_var

scoreboard players operation $VVx aimninecraft_var = $Vx aimninecraft_var
scoreboard players operation $VVx aimninecraft_var *= $Vx aimninecraft_var
scoreboard players operation $VVy aimninecraft_var = $Vy aimninecraft_var
scoreboard players operation $VVy aimninecraft_var *= $Vy aimninecraft_var
scoreboard players operation $VVz aimninecraft_var = $Vz aimninecraft_var
scoreboard players operation $VVz aimninecraft_var *= $Vz aimninecraft_var

scoreboard players operation $VVdp aimninecraft_var = $VVx aimninecraft_var
scoreboard players operation $VVdp aimninecraft_var += $VVy aimninecraft_var
scoreboard players operation $VVdp aimninecraft_var += $VVz aimninecraft_var

scoreboard players operation $DVdp aimninecraft_var /= $VVdp aimninecraft_var

scoreboard players operation $VxDP aimninecraft_var = $Vx aimninecraft_var
scoreboard players operation $VxDP aimninecraft_var *= $DVdp aimninecraft_var
scoreboard players operation $VyDP aimninecraft_var = $Vy aimninecraft_var
scoreboard players operation $VyDP aimninecraft_var *= $DVdp aimninecraft_var
scoreboard players operation $VzDP aimninecraft_var = $Vx aimninecraft_var
scoreboard players operation $VzDP aimninecraft_var *= $DVdp aimninecraft_var

scoreboard players operation $Dx aimninecraft_var -= $VxDP aimninecraft_var
scoreboard players operation $Dy aimninecraft_var -= $VyDP aimninecraft_var
scoreboard players operation $Dz aimninecraft_var -= $VzDP aimninecraft_var

scoreboard players operation $Vx aimninecraft_var *= $cos(r60) aimninecraft_var
scoreboard players operation $Vy aimninecraft_var *= $cos(r60) aimninecraft_var
scoreboard players operation $Vz aimninecraft_var *= $cos(r60) aimninecraft_var

scoreboard players operation $Dx aimninecraft_var *= $sin(r60) aimninecraft_var
scoreboard players operation $Dy aimninecraft_var *= $sin(r60) aimninecraft_var
scoreboard players operation $Dz aimninecraft_var *= $sin(r60) aimninecraft_var

scoreboard players operation $Vx aimninecraft_var += $Dx aimninecraft_var
scoreboard players operation $Vy aimninecraft_var += $Dy aimninecraft_var
scoreboard players operation $Vz aimninecraft_var += $Dz aimninecraft_var

scoreboard players operation $Vx aimninecraft_var *= $Vm aimninecraft_var
scoreboard players operation $Vy aimninecraft_var *= $Vm aimninecraft_var
scoreboard players operation $Vz aimninecraft_var *= $Vm aimninecraft_var

execute store result entity @s Air byte 0.0001 run scoreboard players get $Vx aimninecraft_var

#tellraw @a ["",{"text":"("},{"score":{"name":"$Vx","objective":"aimninecraft_var"}},{"text":","},{"score":{"name":"$Vy","objective":"aimninecraft_var"}},{"text":","},{"score":{"name":"$Vz","objective":"aimninecraft_var"}},{"text":")"}]
execute store result entity @s Motion[0] double 0.000000001 run scoreboard players get $Vx aimninecraft_var
execute store result entity @s Motion[1] double 0.000000001 run scoreboard players get $Vy aimninecraft_var
execute store result entity @s Motion[2] double 0.000000001 run scoreboard players get $Vz aimninecraft_var