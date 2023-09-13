function whoami:skip_next
scoreboard players operation @s whoami_ids = $next whoami_var
scoreboard players add $next whoami_var 1