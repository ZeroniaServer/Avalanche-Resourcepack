data modify storage cw_wasd Motion set value [0.0,0.0,0.0]
scoreboard players reset .rot vehicle
scoreboard players set #input math 0
execute as @a if predicate wasd:on_sleigh at @s run function powerups:sleigh/input
execute as @a unless predicate wasd:on_sleigh run attribute @s movement_speed modifier remove sleigh:sprint
execute as @e[type=turtle,tag=vehicle] run function powerups:sleigh/physics

#> Blocky sleigh easteregg
execute as @e[type=item_display,tag=NewSleigh] if predicate powerups:blockychance run tag @s add BlockySleigh
tag @e[type=item_display,tag=NewSleigh] remove NewSleigh
scoreboard players add @e[type=item_display,tag=BlockySleigh] CmdData 1
execute as @e[type=item_display,tag=BlockySleigh,scores={CmdData=10}] at @s run particle dust{color:[1.000,0.000,0.000],scale:2} ~ ~ ~ 0.4 0.2 0.4 0.1 10 force
execute as @e[type=item_display,tag=BlockySleigh,scores={CmdData=10}] at @s run particle dust{color:[0.000,1.000,0.000],scale:2} ~ ~ ~ 0.4 0.2 0.4 0.1 10 force
execute as @e[type=item_display,tag=BlockySleigh,scores={CmdData=10}] at @s run particle dust{color:[0.000,0.000,1.000],scale:2} ~ ~ ~ 0.4 0.2 0.4 0.1 10 force
execute as @e[type=item_display,tag=BlockySleigh,scores={CmdData=10}] at @s run data modify entity @s item.id set value "diamond_hoe"
execute as @e[type=item_display,tag=BlockySleigh,scores={CmdData=10}] at @s run data modify entity @s item.components."minecraft:custom_model_data" set value 24
execute as @e[type=item_display,tag=BlockySleigh,scores={CmdData=10}] at @s run playsound entity.shulker_bullet.hit master @a ~ ~ ~ 1 2
execute as @e[type=item_display,tag=BlockySleigh,scores={CmdData=10}] at @s run playsound entity.shulker_bullet.hit master @a ~ ~ ~ 1 0