execute unless score @s sleighDamage matches 4 store result storage avalanche:sleighdrop val int 1 run scoreboard players get @s sleighDamage
execute unless score @s sleighDamage matches 4 at @s run function powerups:sleigh/drop with storage avalanche:sleighdrop
execute unless predicate powerups:sleigh_void at @s run particle block{block_state:"spruce_planks"} ~ ~ ~ 0.5 0.5 0.5 0.1 100 force
execute if predicate powerups:sleigh_void if entity @s[tag=Occupied] on passengers on passengers at @s[type=player] run particle block{block_state:"spruce_planks"} ~ ~5 ~ 0.5 0.5 0.5 0.1 100 force
execute if predicate powerups:sleigh_void unless entity @s[tag=Occupied] at @s run particle block{block_state:"spruce_planks"} ~ ~ ~ 0.5 0.5 0.5 0.1 100 force
execute if score @s sleighDamage matches 4.. at @s run playsound minecraft:block.wooden_trapdoor.close master @a ~ ~ ~ 1 0
execute if score @s sleighDamage matches 4.. at @s run playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 0.8 1
execute unless score @s sleighDamage matches 4.. at @s run playsound block.nether_wood.break master @a ~ ~ ~ 0.8 0
execute unless score @s sleighDamage matches 4.. at @s run playsound block.nether_wood.break master @a ~ ~ ~ 0.8 2
execute unless score @s sleighDamage matches 4.. at @s run playsound entity.chicken.egg master @a ~ ~ ~ 0.6 1.2
execute on passengers on passengers run attribute @s[type=player] movement_speed modifier remove sleigh:sprint
execute on passengers on passengers run ride @s[type=player] dismount
function arenaclear:kill_recursive