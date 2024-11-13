particle block{block_state:"minecraft:snow"} ~ ~ ~ 0 0 0 0.1 15 force
particle minecraft:snowflake ~ ~ ~ 0 0 0 0.1 4

execute store result storage util:soundpitch pitch int 1 run random value 0..3
function powerups:snowball/playsound with storage util:soundpitch

execute if entity @s[tag=Green] as @e[type=item_display,tag=CampfireMain,scores={CmdData=22..540},tag=Red,distance=..1] at @s run playsound minecraft:block.redstone_torch.burnout master @a ~ ~ ~ 0.2 2
execute if entity @s[tag=Green] as @e[type=item_display,tag=CampfireMain,scores={CmdData=22..540},tag=Red,distance=..1] at @s run particle smoke ~ ~0.1 ~ 0 0.1 0 .03 4 force
execute if entity @s[tag=Green] as @e[type=item_display,tag=CampfireMain,scores={CmdData=22..540},tag=Red,distance=..1] at @s run scoreboard players add @s CmdData 60

execute if entity @s[tag=Red] as @e[type=item_display,tag=CampfireMain,scores={CmdData=22..540},tag=Green,distance=..1] at @s run playsound minecraft:block.redstone_torch.burnout master @a ~ ~ ~ 0.2 2
execute if entity @s[tag=Red] as @e[type=item_display,tag=CampfireMain,scores={CmdData=22..540},tag=Green,distance=..1] at @s run particle smoke ~ ~0.1 ~ 0 0.1 0 .03 4 force
execute if entity @s[tag=Red] as @e[type=item_display,tag=CampfireMain,scores={CmdData=22..540},tag=Green,distance=..1] at @s run scoreboard players add @s CmdData 60


execute if entity @s[tag=Green] as @e[type=item_display,tag=CampfireMain,scores={CmdData=541..599},tag=Red,distance=..1] at @s run playsound minecraft:block.redstone_torch.burnout master @a ~ ~ ~ 0.2 2
execute if entity @s[tag=Green] as @e[type=item_display,tag=CampfireMain,scores={CmdData=541..599},tag=Red,distance=..1] at @s run particle smoke ~ ~0.1 ~ 0 0.1 0 .03 4 force
execute if entity @s[tag=Green] as @e[type=item_display,tag=CampfireMain,scores={CmdData=541..599},tag=Red,distance=..1] at @s run scoreboard players set @s CmdData 600

execute if entity @s[tag=Red] as @e[type=item_display,tag=CampfireMain,scores={CmdData=541..599},tag=Green,distance=..1] at @s run playsound minecraft:block.redstone_torch.burnout master @a ~ ~ ~ 0.2 2
execute if entity @s[tag=Red] as @e[type=item_display,tag=CampfireMain,scores={CmdData=541..599},tag=Green,distance=..1] at @s run particle smoke ~ ~0.1 ~ 0 0.1 0 .03 4 force
execute if entity @s[tag=Red] as @e[type=item_display,tag=CampfireMain,scores={CmdData=541..599},tag=Green,distance=..1] at @s run scoreboard players set @s CmdData 600



kill @s