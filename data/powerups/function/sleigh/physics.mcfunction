
execute at @s if predicate powerups:sleigh_void run scoreboard players set @s sleighDamage 4
execute at @s if predicate powerups:sleigh_void run return run function powerups:sleigh/break

scoreboard players add @s vehicle.dx 0
scoreboard players add @s vehicle.dz 0

## ran as the vehicle base
execute unless predicate game:in_air run scoreboard players set @s vehicle.friction 70
execute if predicate game:on_ice run scoreboard players operation @s vehicle.friction /= #2 constant
execute if predicate game:in_air unless predicate game:on_ground run scoreboard players set @s vehicle.friction 0
execute unless score @s vehicle.friction matches 0 run function powerups:sleigh/friction
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
execute if score #bool math matches 1.. at @s[predicate=!game:in_air] run function powerups:sleigh/effects

scoreboard players add @s[tag=Surf] surfTimer 1
tag @s[scores={surfTimer=30..}] remove Surf
scoreboard players reset @s[scores={surfTimer=30..}] surfTimer
data merge entity @s[tag=!Surf] {NoAI:1b}
execute if score #input math matches 1.. run data merge entity @s {NoAI:0b}
execute on passengers on passengers if predicate wasd:backward on vehicle on vehicle run data merge entity @s {NoAI:1b}
execute unless score #bool math matches 0 run data merge entity @s {NoAI:0b}
execute on passengers on passengers if predicate wasd:jump on vehicle on vehicle run data merge entity @s {NoAI:0b}
execute unless predicate game:on_ground run data merge entity @s {NoAI:0b}

########################

### update motion ###
execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s vehicle.dx
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s vehicle.dz

function powerups:sleigh/pilot

#> Display states
execute on passengers if entity @s[type=item_display] run function powerups:sleigh/display