#say entering tag_if_found

tag @s add anch_target
function anglecheck:check_one_by_facing
execute unless entity @s[tag=anch_found] if score $found anglecheck_var matches 1 run tag @s add anch_found
tag @s remove anch_target