summon marker ~ ~ ~ {Tags: ["loctrack"]}
execute store result score $Dx anglecheck_var run data get entity @e[tag=loctrack,limit=1] Pos[0] 1
execute store result score $Dy anglecheck_var run data get entity @e[tag=loctrack,limit=1] Pos[1] 1
execute store result score $Dz anglecheck_var run data get entity @e[tag=loctrack,limit=1] Pos[2] 1

tellraw @a ["",{"text":"DEBUG: "},{"score":{"name":"$Dx","objective":"anglecheck_var"}},",",{"score":{"name":"$Dy","objective":"anglecheck_var"}},",",{"score":{"name":"$Dz","objective":"anglecheck_var"}}]

kill @e[tag=loctrack]