scoreboard players reset * whoami_ids_bak
execute as @e if score @s whoami_ids matches -2147483648.. run scoreboard players operation @s whoami_ids_bak = @s whoami_ids
scoreboard players reset * whoami_ids
execute as @e if score @s whoami_ids_bak matches -2147483648.. run scoreboard players operation @s whoami_ids = @s whoami_ids_bak