advancement revoke @s only powerups:place_campfire
tag @s add placer
data modify storage iris:settings TargetEntities set value false
data modify storage iris:settings MaxRecursionDepth set value 16
data modify storage iris:settings Blacklist set value "#iris:shape_groups/air"
execute at @s anchored eyes positioned ^ ^ ^ run function iris:get_target
execute as @e[type=marker,tag=CampfireSpawner,limit=1] at @s run function powerups:campfire/attemptplace
tag @s remove placer