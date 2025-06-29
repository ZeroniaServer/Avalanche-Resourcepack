execute positioned ~ ~0.01 ~ if block ~ ~-1 ~ #game:air run scoreboard players set @s CmdData 1000 
execute positioned ~ ~0.01 ~ if block ~ ~-1 ~ #game:air run tag @s add Extinguish
execute positioned ~ ~0.01 ~ if block ~ ~-1 ~ #game:air run kill @e[type=item_display,tag=CampfireEntity,tag=Animator,distance=..0.1]

#> Heal nearby players
execute if entity @s[scores={CmdData=20..900},tag=!Extinguish,tag=!Reviving] run function powerups:campfire/heal

#> Revive one nearby player
execute if entity @s[scores={CmdData=20..900},tag=!Extinguish,tag=!Reviving] run function powerups:campfire/revive

#> Extinguish
execute if entity @s[scores={CmdData=900..},tag=!Extinguish] run particle smoke ~ ~0.2 ~ 0.1 0.2 0.1 0.03 5 force
execute if entity @s[scores={CmdData=900..},tag=!Extinguish] run particle large_smoke ~ ~0.2 ~ 0.1 0.3 0.1 0 8 force
execute if entity @s[scores={CmdData=900..},tag=!Extinguish] run playsound campfireextinguish master @a ~ ~ ~ 0.8 0.8
item replace entity @s[tag=Green,scores={CmdData=900..},tag=!Extinguish] contents with diamond_hoe[item_model="minecraft:campfire/green_unlit"]
item replace entity @s[tag=Red,scores={CmdData=900..},tag=!Extinguish] contents with diamond_hoe[item_model="minecraft:campfire/red_unlit"]
execute if entity @s[scores={CmdData=1000..},tag=Extinguish] run particle block{block_state:oak_log} ~ ~ ~ 0.1 0 0.1 0.1 20 force
execute if entity @s[scores={CmdData=1000..},tag=Extinguish] run particle block{block_state:coal_block} ~ ~ ~ 0.1 0 0.1 0.1 10 force
execute if entity @s[scores={CmdData=1000..},tag=Extinguish] run playsound campfirebreak master @a ~ ~ ~ 0.6 0
execute if entity @s[scores={CmdData=1000..},tag=Extinguish] run playsound campfirebreak2 master @a ~ ~ ~ 0.6 0.6
execute if entity @s[scores={CmdData=1000..},tag=Extinguish] run function arenaclear:kill_recursive

#> Revive effects
execute if entity @s[scores={CmdData=851..860},tag=!Extinguish,tag=Reviving] run playsound playerrevive master @a ~ ~ ~ 1 1
execute if entity @s[scores={CmdData=850},tag=!Extinguish,tag=Reviving] run playsound playerrespawn2 master @a ~ ~ ~ 0.8 0.6
execute if entity @s[scores={CmdData=855},tag=!Extinguish,tag=Reviving] run playsound playerrespawn2 master @a ~ ~ ~ 0.8 1.5
execute if entity @s[scores={CmdData=850},tag=!Extinguish,tag=Reviving] run particle soul_fire_flame ~ ~0.2 ~ 0 0 0 0.1 15 force
execute if entity @s[scores={CmdData=850..880},tag=!Extinguish,tag=Reviving] run particle soul ~ ~0.1 ~ 0.1 0.4 0.1 0.1 1 force
execute if entity @s[scores={CmdData=850..860},tag=!Extinguish,tag=Reviving] run particle soul_fire_flame ~ ~0.5 ~ 0 0.4 0 0.01 3 force

execute if entity @s[scores={CmdData=850},tag=Green,tag=!Extinguish,tag=Reviving] run item replace entity @s contents with diamond_hoe[item_model="minecraft:campfire/green_revive"]
execute if entity @s[scores={CmdData=850},tag=Red,tag=!Extinguish,tag=Reviving] run item replace entity @s contents with diamond_hoe[item_model="minecraft:campfire/red_revive"]

execute if entity @s[scores={CmdData=900..},tag=!Extinguish] run tag @s add Extinguish

#> Melt nearby Snowmen
execute if entity @s[tag=Green,scores={CmdData=20..900}] run scoreboard players remove @e[type=item_display,tag=Snowman,tag=Red,scores={playerHP=11..},distance=..3] playerHP 11
execute if entity @s[tag=Green,scores={CmdData=20..900}] run scoreboard players remove @e[type=item_display,tag=Snowman,tag=Red,scores={playerHP=1..},distance=..3] playerHP 1

execute if entity @s[tag=Red,scores={CmdData=20..900}] run scoreboard players remove @e[type=item_display,tag=Snowman,tag=Green,scores={playerHP=11..},distance=..3] playerHP 11
execute if entity @s[tag=Red,scores={CmdData=20..900}] run scoreboard players remove @e[type=item_display,tag=Snowman,tag=Green,scores={playerHP=1..},distance=..3] playerHP 1

#> Sounds/particles
scoreboard players add @s[scores={CmdData=20..850},tag=!Extinguish,tag=!Reviving] ambientfxplayer 1
execute if entity @s[tag=Red,scores={CmdData=20..850},tag=!Extinguish,tag=!Reviving] run particle dust{color:[1.000,0.000,0.000],scale:0.5} ~ ~1 ~ 0 0.5 0 0.03 1 force
execute if entity @s[tag=Green,scores={CmdData=20..850},tag=!Extinguish,tag=!Reviving] run particle dust{color:[0.000,1.000,0.000],scale:0.5} ~ ~ ~ 0 1 0 0.03 1 force
execute if entity @s[scores={CmdData=20..850,ambientfxplayer=1},tag=!Extinguish,tag=!Reviving] run particle smoke ~ ~1 ~ 0.1 0.3 0.1 0.02 4 force
execute if entity @s[scores={CmdData=20..850,ambientfxplayer=10},tag=!Extinguish,tag=!Reviving] run particle smoke ~ ~1 ~ 0.1 0.3 0.1 0.02 4 force
execute if entity @s[scores={CmdData=20..850,ambientfxplayer=20},tag=!Extinguish,tag=!Reviving] run particle smoke ~ ~1 ~ 0.1 0.3 0.1 0.02 4 force
execute if entity @s[scores={CmdData=20..850,ambientfxplayer=30},tag=!Extinguish,tag=!Reviving] run particle smoke ~ ~1 ~ 0.1 0.3 0.1 0.02 4 force
execute if entity @s[scores={CmdData=20..850,ambientfxplayer=40},tag=!Extinguish,tag=!Reviving] run particle smoke ~ ~1 ~ 0.1 0.3 0.1 0.02 4 force
execute if entity @s[scores={CmdData=20..850,ambientfxplayer=50},tag=!Extinguish,tag=!Reviving] run particle smoke ~ ~1 ~ 0.1 0.3 0.1 0.02 4 force

execute if entity @s[scores={CmdData=20..850,ambientfxplayer=40},tag=!Extinguish,tag=!Reviving] run playsound block.campfire.crackle master @a ~ ~ ~ 0.3 1.3
scoreboard players reset @s[scores={CmdData=20..850,ambientfxplayer=60..},tag=!Extinguish,tag=!Reviving] ambientfxplayer