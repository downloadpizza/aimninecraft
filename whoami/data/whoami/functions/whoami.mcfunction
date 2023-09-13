execute as @s unless score @s whoami_ids matches -2147483648.. run function whoami:generate_new
scoreboard players reset $output whoami_var
scoreboard players operation $output whoami_var = @s whoami_ids