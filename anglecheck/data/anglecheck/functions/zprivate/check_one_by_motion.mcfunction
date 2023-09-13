data modify entity @s Pos set from storage anglecheck:temp motion
execute positioned 0. 0 0. facing entity @s eyes run summon marker ^ ^ ^1 {Tags:["anch_direction_norm"]}
function anglecheck:zprivate/check_one
kill @s