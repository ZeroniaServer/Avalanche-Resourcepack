scoreboard players operation @s vehicle.dx *= #5 constant
scoreboard players operation @s vehicle.dz *= #5 constant
scoreboard players operation @s vehicle.dx /= #6 constant
scoreboard players operation @s vehicle.dz /= #6 constant

scoreboard players set #temp math 0
execute unless score @s vehicle.dx matches 0 run scoreboard players add #temp math 1
execute unless score @s vehicle.dz matches 0 run scoreboard players add #temp math 1
execute if score #temp math matches 1.. on passengers at @s[type=minecart] positioned ^ ^ ^1 run particle smoke ~ ~-0.3 ~ 0.2 0.1 0.2 0 8
execute if score #temp math matches 1.. run playsound minecraft:block.snow.hit master @a ~ ~ ~ 1 2