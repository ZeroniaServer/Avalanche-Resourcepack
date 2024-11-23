advancement revoke @s only powerups:place_sleigh

tag @s add placer
data modify storage iris:settings TargetEntities set value false
data modify storage iris:settings MaxRecursionDepth set value 16
data modify storage iris:settings Blacklist set value "#iris:shape_groups/air"
execute at @s anchored eyes positioned ^ ^ ^ run function iris:get_target
execute rotated as @s as @e[type=marker,tag=SpawnSleigh,limit=1] positioned as @s run function powerups:sleigh/getrotation
tag @s remove placer