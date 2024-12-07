#> Spawning/animations
function powerups:campfire/animation

execute as @e[type=item_display,tag=CampfireMain] at @s if block ~ ~-1 ~ air run scoreboard players set @s CmdData 700 
execute as @e[type=item_display,tag=CampfireMain] at @s if block ~ ~-1 ~ air run tag @s add Extinguish

#> Heal nearby players
execute as @e[type=item_display,tag=CampfireMain,scores={CmdData=20..600},tag=!Extinguish,tag=!Reviving] at @s run function powerups:campfire/heal

#> Revive one nearby player
execute as @e[type=item_display,tag=CampfireMain,scores={CmdData=20..600},tag=!Extinguish,tag=!Reviving] at @s run function powerups:campfire/revive

#> Extinguish
execute as @e[type=item_display,tag=CampfireMain,scores={CmdData=600..},tag=!Extinguish] at @s run particle smoke ~ ~0.2 ~ 0.1 0.2 0.1 0.03 5 force
execute as @e[type=item_display,tag=CampfireMain,scores={CmdData=600..},tag=!Extinguish] at @s run particle large_smoke ~ ~0.2 ~ 0.1 0.3 0.1 0 8 force
execute as @e[type=item_display,tag=CampfireMain,scores={CmdData=600..},tag=!Extinguish] at @s run playsound block.fire.extinguish master @a ~ ~ ~ 0.8 0.8
execute as @e[type=item_display,tag=CampfireMain,tag=Green,scores={CmdData=600..},tag=!Extinguish] at @s run data merge entity @s {item:{id:"diamond_hoe",components:{item_model:"minecraft:campfire/green_unlit"}}}
execute as @e[type=item_display,tag=CampfireMain,tag=Red,scores={CmdData=600..},tag=!Extinguish] at @s run data merge entity @s {item:{id:"diamond_hoe",components:{item_model:"minecraft:campfire/red_unlit"}}}
execute as @e[type=item_display,tag=CampfireMain,scores={CmdData=700..},tag=Extinguish] at @s run particle block{block_state:oak_log} ~ ~ ~ 0.1 0 0.1 0.1 20 force
execute as @e[type=item_display,tag=CampfireMain,scores={CmdData=700..},tag=Extinguish] at @s run particle block{block_state:coal_block} ~ ~ ~ 0.1 0 0.1 0.1 10 force
execute as @e[type=item_display,tag=CampfireMain,scores={CmdData=700..},tag=Extinguish] at @s run playsound block.wood.break master @a ~ ~ ~ 0.6 0
execute as @e[type=item_display,tag=CampfireMain,scores={CmdData=700..},tag=Extinguish] at @s run playsound block.deepslate.break master @a ~ ~ ~ 0.6 0.6
execute as @e[type=item_display,tag=CampfireMain,scores={CmdData=700..},tag=Extinguish] run function arenaclear:kill_recursive

#> Revive effects
execute as @e[type=item_display,tag=CampfireMain,scores={CmdData=551..560},tag=!Extinguish,tag=Reviving] at @s run playsound particle.soul_escape master @a ~ ~ ~ 1 1
execute as @e[type=item_display,tag=CampfireMain,scores={CmdData=550},tag=!Extinguish,tag=Reviving] at @s run playsound entity.blaze.shoot master @a ~ ~ ~ 0.8 0.6
execute as @e[type=item_display,tag=CampfireMain,scores={CmdData=555},tag=!Extinguish,tag=Reviving] at @s run playsound entity.blaze.shoot master @a ~ ~ ~ 0.8 1.5
execute as @e[type=item_display,tag=CampfireMain,scores={CmdData=550},tag=!Extinguish,tag=Reviving] at @s run particle soul_fire_flame ~ ~0.2 ~ 0 0 0 0.1 15 force
execute as @e[type=item_display,tag=CampfireMain,scores={CmdData=550..580},tag=!Extinguish,tag=Reviving] at @s run particle soul ~ ~0.1 ~ 0.1 0.4 0.1 0.1 1 force
execute as @e[type=item_display,tag=CampfireMain,scores={CmdData=550..560},tag=!Extinguish,tag=Reviving] at @s run particle soul_fire_flame ~ ~0.5 ~ 0 0.4 0 0.01 3 force

execute as @e[type=item_display,tag=CampfireMain,scores={CmdData=550},tag=Green,tag=!Extinguish,tag=Reviving] at @s run data merge entity @s {item:{id:"diamond_hoe",components:{item_model:"minecraft:campfire/green_revive"}}}
execute as @e[type=item_display,tag=CampfireMain,scores={CmdData=550},tag=Red,tag=!Extinguish,tag=Reviving] at @s run data merge entity @s {item:{id:"diamond_hoe",components:{item_model:"minecraft:campfire/red_revive"}}}

execute as @e[type=item_display,tag=CampfireMain,scores={CmdData=600..},tag=!Extinguish] run tag @s add Extinguish

#> Melt nearby Snowmen
execute as @e[type=item_display,tag=CampfireMain,tag=Green,scores={CmdData=20..600}] at @s run scoreboard players remove @e[type=item_display,tag=Snowman,tag=Red,scores={playerHP=11..},distance=..3] playerHP 11
execute as @e[type=item_display,tag=CampfireMain,tag=Green,scores={CmdData=20..600}] at @s run scoreboard players remove @e[type=item_display,tag=Snowman,tag=Red,scores={playerHP=1..},distance=..3] playerHP 1

execute as @e[type=item_display,tag=CampfireMain,tag=Red,scores={CmdData=20..600}] at @s run scoreboard players remove @e[type=item_display,tag=Snowman,tag=Green,scores={playerHP=11..},distance=..3] playerHP 11
execute as @e[type=item_display,tag=CampfireMain,tag=Red,scores={CmdData=20..600}] at @s run scoreboard players remove @e[type=item_display,tag=Snowman,tag=Green,scores={playerHP=1..},distance=..3] playerHP 1

#> Sounds/particles
scoreboard players add @e[type=item_display,tag=CampfireMain,scores={CmdData=20..550},tag=!Extinguish,tag=!Reviving] ambientfxplayer 1
execute as @e[type=item_display,tag=CampfireMain,tag=Red,scores={CmdData=20..550},tag=!Extinguish,tag=!Reviving] at @s run particle dust{color:[1.000,0.000,0.000],scale:0.5} ~ ~1 ~ 0 0.5 0 0.03 1 force
execute as @e[type=item_display,tag=CampfireMain,tag=Green,scores={CmdData=20..550},tag=!Extinguish,tag=!Reviving] at @s run particle dust{color:[0.000,1.000,0.000],scale:0.5} ~ ~ ~ 0 1 0 0.03 1 force
execute as @e[type=item_display,tag=CampfireMain,scores={CmdData=20..550,ambientfxplayer=1},tag=!Extinguish,tag=!Reviving] at @s run particle smoke ~ ~1 ~ 0.1 0.3 0.1 0.02 4 force
execute as @e[type=item_display,tag=CampfireMain,scores={CmdData=20..550,ambientfxplayer=10},tag=!Extinguish,tag=!Reviving] at @s run particle smoke ~ ~1 ~ 0.1 0.3 0.1 0.02 4 force
execute as @e[type=item_display,tag=CampfireMain,scores={CmdData=20..550,ambientfxplayer=20},tag=!Extinguish,tag=!Reviving] at @s run particle smoke ~ ~1 ~ 0.1 0.3 0.1 0.02 4 force
execute as @e[type=item_display,tag=CampfireMain,scores={CmdData=20..550,ambientfxplayer=30},tag=!Extinguish,tag=!Reviving] at @s run particle smoke ~ ~1 ~ 0.1 0.3 0.1 0.02 4 force
execute as @e[type=item_display,tag=CampfireMain,scores={CmdData=20..550,ambientfxplayer=40},tag=!Extinguish,tag=!Reviving] at @s run particle smoke ~ ~1 ~ 0.1 0.3 0.1 0.02 4 force
execute as @e[type=item_display,tag=CampfireMain,scores={CmdData=20..550,ambientfxplayer=50},tag=!Extinguish,tag=!Reviving] at @s run particle smoke ~ ~1 ~ 0.1 0.3 0.1 0.02 4 force

execute as @e[type=item_display,tag=CampfireMain,scores={CmdData=20..550,ambientfxplayer=40},tag=!Extinguish,tag=!Reviving] at @s run playsound block.campfire.crackle master @a ~ ~ ~ 0.3 1.3
scoreboard players reset @e[type=item_display,tag=CampfireMain,scores={CmdData=20..550,ambientfxplayer=60..},tag=!Extinguish,tag=!Reviving] ambientfxplayer