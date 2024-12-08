particle block{block_state:"minecraft:coal_block"} ~ ~ ~ 0 0 0 0.1 10 force
particle block{block_state:"minecraft:red_wool"} ~ ~ ~ 0.2 0.4 0.2 0.1 20 force
particle block{block_state:"minecraft:green_wool"} ~ ~ ~ 0.2 0.4 0.2 0.1 20 force

particle falling_dust{block_state:"minecraft:coal_block"} ~ ~ ~ 1 1 1 0.1 10 force
particle dust{color:[0.000,0.000,0.100],scale:3} ~ ~ ~ 0.4 0.4 0.4 0.1 10 force
particle block_crumble{block_state:"minecraft:coal_block"} ~ ~1 ~ 0.4 0.2 0.4 0.1 20 force

#> Refueling campfires
execute if entity @s[tag=Red] as @e[type=item_display,tag=CampfireMain,tag=Red,scores={CmdData=22..1199},distance=..2] at @s run function powerups:campfire/refuel
execute if entity @s[tag=Green] as @e[type=item_display,tag=CampfireMain,tag=Green,scores={CmdData=22..1199},distance=..2] at @s run function powerups:campfire/refuel

effect give @a[gamemode=!spectator,distance=..4] blindness 4 100 true
effect give @a[gamemode=!spectator,distance=..4] darkness 4 100 true
execute as @a[gamemode=!spectator,distance=..4] at @s run stopsound @s * coalstockrelease
execute as @a[gamemode=!spectator,distance=..4] at @s run playsound coalstockrelease master @s ~ ~ ~ 1 1
tag @a[gamemode=!spectator,distance=..4] add CoalBlind
tag @e[type=item_display,tag=Snowman,distance=..4] add CoalBlind

execute store result storage util:soundpitch pitch int 1 run random value 0..3
function powerups:coalstock/playsound with storage util:soundpitch
kill

summon marker ~ ~ ~ {Tags:["CoalStock","CoalStockMarker","x1","x"]}
summon marker ~ ~ ~ {Tags:["CoalStock","CoalStockMarker","x2","x"]}
summon marker ~ ~ ~ {Tags:["CoalStock","CoalStockMarker","z1","z"]}
summon marker ~ ~ ~ {Tags:["CoalStock","CoalStockMarker","z2","z"]}
execute as @s at @s run summon item_display ~ ~ ~ {Tags:["CoalStock","CoalStockItemDisplay"],item:{id:"minecraft:coal"},transformation:{scale:[0.0f,0.0f,0.0f],translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head"}
execute as @s at @s run summon item_display ~ ~ ~ {Tags:["CoalStock","CoalStockItemDisplay"],item:{id:"minecraft:coal"},transformation:{scale:[0.0f,0.0f,0.0f],translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head"}
execute as @s at @s run summon item_display ~ ~ ~ {Tags:["CoalStock","CoalStockItemDisplay"],item:{id:"minecraft:coal"},transformation:{scale:[0.0f,0.0f,0.0f],translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head"}
execute as @s at @s run summon item_display ~ ~ ~ {Tags:["CoalStock","CoalStockItemDisplay"],item:{id:"minecraft:coal"},transformation:{scale:[0.0f,0.0f,0.0f],translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head"}
execute as @s at @s run summon item_display ~ ~ ~ {Tags:["CoalStock","CoalStockItemDisplay"],item:{id:"minecraft:charcoal"},transformation:{scale:[0.0f,0.0f,0.0f],translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head"}
execute as @s at @s run summon item_display ~ ~ ~ {Tags:["CoalStock","CoalStockItemDisplay"],item:{id:"minecraft:charcoal"},transformation:{scale:[0.0f,0.0f,0.0f],translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head"}
execute as @s at @s run summon item_display ~ ~ ~ {Tags:["CoalStock","CoalStockItemDisplay"],item:{id:"minecraft:charcoal"},transformation:{scale:[0.0f,0.0f,0.0f],translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head"}
execute as @s at @s run summon item_display ~ ~ ~ {Tags:["CoalStock","CoalStockItemDisplay"],item:{id:"minecraft:coal_block"},transformation:{scale:[0.0f,0.0f,0.0f],translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head"}
execute as @s at @s run summon item_display ~ ~ ~ {Tags:["CoalStock","CoalStockItemDisplay"],item:{id:"minecraft:coal_block"},transformation:{scale:[0.0f,0.0f,0.0f],translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head"}
execute as @s at @s run summon item_display ~ ~ ~ {Tags:["CoalStock","CoalStockItemDisplay"],item:{id:"minecraft:coal_block"},transformation:{scale:[0.0f,0.0f,0.0f],translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head"}
execute as @s at @s run summon item_display ~ ~ ~ {Tags:["CoalStock","CoalStockItemDisplay"],item:{id:"minecraft:coal_block"},transformation:{scale:[0.0f,0.0f,0.0f],translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head"}

execute as @e[type=item_display,tag=CoalStockItemDisplay] run function powerups:coalstock/decorations with storage coalstock:effects