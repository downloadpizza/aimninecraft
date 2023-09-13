data modify entity @s Pos set from storage aimninecraft:temp motion
execute positioned 0. 0 0. facing entity @s feet run tp @s ^ ^ ^1
execute store result score $Vx aimninecraft_var run data get entity @s Pos[0] 1000
execute store result score $Vy aimninecraft_var run data get entity @s Pos[1] 1000
execute store result score $Vz aimninecraft_var run data get entity @s Pos[2] 1000
kill