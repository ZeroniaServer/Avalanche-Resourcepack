data modify storage cw_wasd Motion set value [0.0,0.0,0.0]
scoreboard players reset .rot vehicle
scoreboard players set #input math 0
execute as @a if predicate wasd:on_sleigh at @s run function powerups:sleigh/input
execute as @a unless predicate wasd:on_sleigh run attribute @s movement_speed modifier remove sleigh:sprint
execute as @e[type=turtle,tag=vehicle] run function powerups:sleigh/physics
execute as @e[type=item,tag=SleighItem] at @s run function powerups:sleigh/item
tag @a remove giveSleigh