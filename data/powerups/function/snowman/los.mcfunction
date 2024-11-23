data modify storage iris:settings TargetEntities set value true
data modify storage iris:settings MaxRecursionDepth set value 13
tag @a remove snowmanTarget

execute at @s[tag=Red,tag=Spawned,tag=!Dying,tag=!CoalBlind] positioned ~ ~1.7 ~ facing entity @a[team=Green,tag=!Knockout,distance=..13,sort=nearest] eyes positioned ^ ^ ^ if function powerups:snowman/los_check run return 1
execute at @s[tag=Green,tag=Spawned,tag=!Dying,tag=!CoalBlind] positioned ~ ~1.7 ~ facing entity @a[team=Red,tag=!Knockout,distance=..13,sort=nearest] eyes positioned ^ ^ ^ if function powerups:snowman/los_check run return 1