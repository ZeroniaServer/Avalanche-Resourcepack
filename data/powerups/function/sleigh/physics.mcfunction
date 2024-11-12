execute if predicate game:void at @s run function powerups:sleigh/break

## ran as the vehicle base
execute if score @s vehicle.dx matches ..-1 run scoreboard players operation @s vehicle.dx += .friction vehicle
execute if score @s vehicle.dx matches 1.. run scoreboard players operation @s vehicle.dx -= .friction vehicle
execute if score @s vehicle.dz matches ..-1 run scoreboard players operation @s vehicle.dz += .friction vehicle
execute if score @s vehicle.dz matches 1.. run scoreboard players operation @s vehicle.dz -= .friction vehicle
scoreboard players operation #temp vehicle.dx = @s vehicle.dx
execute if score #temp vehicle.dx matches ..-1 run scoreboard players operation #temp vehicle.dx *= #-1 constant
execute if score #temp vehicle.dx < .friction vehicle run scoreboard players set @s vehicle.dx 0
scoreboard players operation #temp vehicle.dz = @s vehicle.dz
execute if score #temp vehicle.dz matches ..-1 run scoreboard players operation #temp vehicle.dz *= #-1 constant
execute if score #temp vehicle.dz < .friction vehicle run scoreboard players set @s vehicle.dz 0
#########

### smooth rotation ###
execute store result score p vehicle.dx run data get entity @s Pos[0] 100.0
execute store result score p vehicle.dz run data get entity @s Pos[2] 100.0
scoreboard players operation v vehicle.dx = @s vehicle.dx
scoreboard players operation v vehicle.dz = @s vehicle.dz
scoreboard players set #bool math 0
execute unless score v vehicle.dx matches 0 run scoreboard players add #bool math 1
execute unless score v vehicle.dz matches 0 run scoreboard players add #bool math 1

execute if score #bool math matches 1.. on passengers at @s[type=minecart] run function powerups:sleigh/rotate
execute if score #bool math matches 1.. at @s[tag=!SleighOffGround] run function powerups:sleigh/effects

data merge entity @s {NoAI:1b}
execute if score #input math matches 1 run data merge entity @s {NoAI:0b}
execute unless score #bool math matches 0 run data merge entity @s {NoAI:0b}
execute if entity @s[tag=SleighOffGround] run data merge entity @s {NoAI:0b}

########################

### update motion ###
execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s vehicle.dx
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s vehicle.dz

function powerups:sleigh/pilot