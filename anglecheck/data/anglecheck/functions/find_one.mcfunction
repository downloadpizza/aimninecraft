#say entering find_one
# precheck
# execute if score $precheckAngle anglecheck_var matches ..20 run function anglecheck:zprivate/pre_check20
# execute if score $precheckAngle anglecheck_var matches 21..50 run function anglecheck:zprivate/pre_check50
# execute if score $precheckAngle anglecheck_var matches 51..70 run function anglecheck:zprivate/pre_check70
# execute if score $precheckAngle anglecheck_var matches 71.. run function anglecheck:zprivate/pre_check_any
function anglecheck:zprivate/pre_check_any

tag @s add anch_source

execute as @e[tag=anch_prechecked,tag=!anch_source,sort=nearest] run function anglecheck:zprivate/tag_first_only

tag @s remove anch_source
tag @e[tag=anch_prechecked] remove anch_prechecked