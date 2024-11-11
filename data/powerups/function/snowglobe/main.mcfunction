scoreboard players add @e[type=item_display,tag=Snowglobe] CmdData 1
#> Kill the base
execute as @e[type=item_display,tag=SnowglobeBase,scores={CmdData=40..}] at @s run particle item{item:{id:"minecraft:diamond_hoe",components:{custom_model_data:3}}} ~ ~ ~ 0.1 0.1 0.1 0.1 20 force
execute as @e[type=item_display,tag=SnowglobeBase,scores={CmdData=40..}] at @s run playsound block.wood.break master @a ~ ~ ~ 1 2
execute as @e[type=item_display,tag=SnowglobeBase,scores={CmdData=40..}] run kill @s

#> Make the ball shoot up
execute as @e[type=item_display,tag=SnowglobeBall,scores={CmdData=2}] at @s run particle small_gust ~ ~1 ~ 0 1 0 0.02 12 force
execute as @e[type=item_display,tag=SnowglobeBall,scores={CmdData=5}] at @s run particle small_gust ~ ~2 ~ 0 1.2 0 0.02 12 force
execute as @e[type=item_display,tag=SnowglobeBall,scores={CmdData=7}] at @s run particle small_gust ~ ~2.5 ~ 0 1.5 0 0.02 12 force

execute as @e[type=item_display,tag=SnowglobeBall,scores={CmdData=2..6}] run data merge entity @s {interpolation_duration:4,start_interpolation:0,transformation:{translation:[0.0f,5.0f,0.0f]}}
execute as @e[type=item_display,tag=SnowglobeBall,scores={CmdData=12}] run data merge entity @s {interpolation_duration:9,start_interpolation:0,transformation:{translation:[0.0f,4.0f,0.0f]}}
execute as @e[type=item_display,tag=SnowglobeBall,scores={CmdData=14}] at @s run particle gust ~ ~4 ~ 0 0 0 0 1 force
execute as @e[type=item_display,tag=SnowglobeBall,scores={CmdData=14}] at @s run particle gust_emitter_small ~ ~6 ~ 1 1 1 0.1 4 force
execute as @e[type=item_display,tag=SnowglobeBall,scores={CmdData=16}] at @s run playsound snowglobeburst master @a ~ ~5 ~ 1 1
execute as @e[type=item_display,tag=SnowglobeBall,scores={CmdData=15..16}] at @s run particle cloud ~ ~5 ~ 0.2 0.2 0.2 0.4 60 force
execute as @e[type=item_display,tag=SnowglobeBall,tag=Green,scores={CmdData=16}] at @s run summon item_display ~ ~4.5 ~ {Tags:["Snowglobe","Green","StormCloudMain"],brightness:{sky:15,block:15},item_display:"head",item:{id:"minecraft:diamond_hoe",components:{custom_model_data:6}},transformation:{translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.0f,0.0f,0.0f]}}
execute as @e[type=item_display,tag=SnowglobeBall,tag=Red,scores={CmdData=16}] at @s run summon item_display ~ ~4.5 ~ {Tags:["Snowglobe","Red","StormCloudMain"],brightness:{sky:15,block:15},item_display:"head",item:{id:"minecraft:diamond_hoe",components:{custom_model_data:5}},transformation:{translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.0f,0.0f,0.0f]}}
execute as @e[type=item_display,tag=SnowglobeBall,scores={CmdData=16..}] run kill @s

#> Cloud spawning animation
execute as @e[type=item_display,tag=StormCloudMain,scores={CmdData=2}] run data merge entity @s {interpolation_duration:6,start_interpolation:0,transformation:{scale:[1.0f,2.0f,1.0f]}}
execute as @e[type=item_display,tag=StormCloudMain,scores={CmdData=8}] run data merge entity @s {interpolation_duration:3,start_interpolation:0,transformation:{scale:[1.5f,1.5f,1.5f]}}


#> Cloud particles
execute as @e[type=item_display,tag=StormCloudMain,scores={CmdData=5..250}] at @s run particle snowflake ~ ~-0.4 ~ 0.6 0 0.6 0 3 force @a

#> Despawn
execute as @e[type=item_display,tag=StormCloudMain,scores={CmdData=270}] run data merge entity @s {interpolation_duration:10,start_interpolation:0,transformation:{scale:[0.0f,1.0f,0.0f]}}
execute as @e[type=item_display,tag=StormCloudMain,scores={CmdData=275}] run data merge entity @s {interpolation_duration:10,start_interpolation:0,transformation:{scale:[0.0f,0.0f,0.0f]}}
execute as @e[type=item_display,tag=StormCloudMain,scores={CmdData=285}] at @s run particle small_gust ~ ~-0.2 ~ 0.1 0.1 0.1 0.5 15 force
execute as @e[type=item_display,tag=StormCloudMain,scores={CmdData=285}] at @s run particle cloud ~ ~-0.2 ~ 0.1 0.1 0.1 0.04 5 force
execute as @e[type=item_display,tag=StormCloudMain,scores={CmdData=290..}] run kill @s

#> Blizzard sounds
execute as @e[type=item_display,tag=StormCloudMain,scores={CmdData=1}] at @s run playsound minecraft:snowglobe_blizzard_1 master @a[distance=..24] ~ ~ ~ 0.2 1
execute as @e[type=item_display,tag=StormCloudMain,scores={CmdData=21}] at @s run playsound minecraft:snowglobe_blizzard_2 master @a[distance=..24] ~ ~ ~ 0.2 1
execute as @e[type=item_display,tag=StormCloudMain,scores={CmdData=41}] at @s run playsound minecraft:snowglobe_blizzard_3 master @a[distance=..24] ~ ~ ~ 0.2 1
execute as @e[type=item_display,tag=StormCloudMain,scores={CmdData=61}] at @s run playsound minecraft:snowglobe_blizzard_4 master @a[distance=..24] ~ ~ ~ 0.2 1
execute as @e[type=item_display,tag=StormCloudMain,scores={CmdData=81}] at @s run playsound minecraft:snowglobe_blizzard_5 master @a[distance=..24] ~ ~ ~ 0.2 1
execute as @e[type=item_display,tag=StormCloudMain,scores={CmdData=101}] at @s run playsound minecraft:snowglobe_blizzard_6 master @a[distance=..24] ~ ~ ~ 0.2 1
execute as @e[type=item_display,tag=StormCloudMain,scores={CmdData=121}] at @s run playsound minecraft:snowglobe_blizzard_7 master @a[distance=..24] ~ ~ ~ 0.2 1
execute as @e[type=item_display,tag=StormCloudMain,scores={CmdData=141}] at @s run playsound minecraft:snowglobe_blizzard_8 master @a[distance=..24] ~ ~ ~ 0.2 1
execute as @e[type=item_display,tag=StormCloudMain,scores={CmdData=161}] at @s run playsound minecraft:snowglobe_blizzard_9 master @a[distance=..24] ~ ~ ~ 0.2 1
execute as @e[type=item_display,tag=StormCloudMain,scores={CmdData=181}] at @s run playsound minecraft:snowglobe_blizzard_10 master @a[distance=..24] ~ ~ ~ 0.2 1
execute as @e[type=item_display,tag=StormCloudMain,scores={CmdData=201}] at @s run playsound minecraft:snowglobe_blizzard_11 master @a[distance=..24] ~ ~ ~ 0.2 1
execute as @e[type=item_display,tag=StormCloudMain,scores={CmdData=221}] at @s run playsound minecraft:snowglobe_blizzard_12 master @a[distance=..24] ~ ~ ~ 0.2 1
execute as @e[type=item_display,tag=StormCloudMain,scores={CmdData=241}] at @s run playsound minecraft:snowglobe_blizzard_13 master @a[distance=..24] ~ ~ ~ 0.2 1
execute as @e[type=item_display,tag=StormCloudMain,scores={CmdData=261}] at @s run playsound minecraft:snowglobe_blizzard_14 master @a[distance=..24] ~ ~ ~ 0.2 1
execute as @e[type=item_display,tag=StormCloudMain,scores={CmdData=281}] at @s run playsound minecraft:snowglobe_blizzard_15 master @a[distance=..24] ~ ~ ~ 0.2 1

#> Damage enemies over time
tag @a[tag=InEnemyCloud] remove InEnemyCloud
tag @a[tag=InFriendlyCloud] remove InFriendlyCloud
execute as @e[type=item_display,tag=StormCloudMain,tag=Red,scores={CmdData=1..260}] at @s positioned ~-2.5 ~-5.5 ~-2.5 run tag @a[team=Green,tag=!Knockout,dx=4,dy=4,dz=4] add InEnemyCloud
execute as @e[type=item_display,tag=StormCloudMain,tag=Red,scores={CmdData=1..260}] at @s positioned ~-2.5 ~-5.5 ~-2.5 run tag @a[team=Red,tag=!Knockout,dx=4,dy=4,dz=4] add InFriendlyCloud
execute as @e[type=item_display,tag=StormCloudMain,tag=Green,scores={CmdData=1..260}] at @s positioned ~-2.5 ~-5.5 ~-2.5 run tag @a[team=Red,tag=!Knockout,dx=4,dy=4,dz=4] add InEnemyCloud
execute as @e[type=item_display,tag=StormCloudMain,tag=Green,scores={CmdData=1..260}] at @s positioned ~-2.5 ~-5.5 ~-2.5 run tag @a[team=Green,tag=!Knockout,dx=4,dy=4,dz=4] add InFriendlyCloud

#> Heal Snowmen in range to full HP
execute as @e[type=item_display,tag=StormCloudMain,tag=Green,scores={CmdData=1..260}] at @s positioned ~-2.5 ~-5.5 ~-2.5 as @e[type=item_display,tag=Snowman,tag=Green,tag=!Dying,dx=4,dy=4,dz=4,scores={playerHP=1..898}] at @s run particle heart ~ ~1 ~ 0.5 0.5 0.5 0.1 5 force
execute as @e[type=item_display,tag=StormCloudMain,tag=Red,scores={CmdData=1..260}] at @s positioned ~-2.5 ~-5.5 ~-2.5 as @e[type=item_display,tag=Snowman,tag=Red,tag=!Dying,dx=4,dy=4,dz=4,scores={playerHP=1..898}] at @s run particle heart ~ ~1 ~ 0.5 0.5 0.5 0.1 5 force
execute as @e[type=item_display,tag=StormCloudMain,tag=Green,scores={CmdData=1..260}] at @s positioned ~-2.5 ~-5.5 ~-2.5 run scoreboard players set @e[type=item_display,tag=Snowman,tag=Green,tag=!Dying,dx=4,dy=4,dz=4,scores={playerHP=1..900}] playerHP 900
execute as @e[type=item_display,tag=StormCloudMain,tag=Red,scores={CmdData=1..260}] at @s positioned ~-2.5 ~-5.5 ~-2.5 run scoreboard players set @e[type=item_display,tag=Snowman,tag=Red,tag=!Dying,dx=4,dy=4,dz=4,scores={playerHP=1..900}] playerHP 900

#> Extinguish enemy campfires
execute as @e[type=item_display,tag=StormCloudMain,tag=Red,scores={CmdData=1..260}] at @s positioned ~-2.5 ~-5.5 ~-2.5 run scoreboard players add @e[type=item_display,tag=CampfireMain,tag=!Extinguish,tag=!Reviving,scores={CmdData=20..585},tag=Green,dx=4,dy=4,dz=4] CmdData 5
execute as @e[type=item_display,tag=StormCloudMain,tag=Green,scores={CmdData=1..260}] at @s positioned ~-2.5 ~-5.5 ~-2.5 run scoreboard players add @e[type=item_display,tag=CampfireMain,tag=!Extinguish,tag=!Reviving,scores={CmdData=20..585},tag=Red,dx=4,dy=4,dz=4] CmdData 5

#> Snow-Mark nearby players
scoreboard players add @a[tag=SnowMark] snowmark 1
execute as @e[type=item_display,tag=StormCloudMain,tag=Red,scores={CmdData=1..260}] at @s positioned ~-4.5 ~-5.5 ~-4.5 run tag @a[team=Green,tag=!Knockout,dx=6,dy=6,dz=6] add SnowMark
execute as @e[type=item_display,tag=StormCloudMain,tag=Green,scores={CmdData=1..260}] at @s positioned ~-4.5 ~-5.5 ~-4.5 run tag @a[team=Red,tag=!Knockout,dx=6,dy=6,dz=6] add SnowMark
execute as @e[type=item_display,tag=StormCloudMain,tag=Red,scores={CmdData=1..260}] at @s positioned ~-4.5 ~-5.5 ~-4.5 run scoreboard players set @a[team=Green,tag=!Knockout,dx=6,dy=6,dz=6,scores={snowmark=2..}] snowmark 2
execute as @e[type=item_display,tag=StormCloudMain,tag=Green,scores={CmdData=1..260}] at @s positioned ~-4.5 ~-5.5 ~-4.5 run scoreboard players set @a[team=Red,tag=!Knockout,dx=6,dy=6,dz=6,scores={snowmark=2..}] snowmark 2
execute as @a[tag=!Knockout,tag=SnowMark,scores={snowmark=1}] store result storage snowglobe:blizzard uuid int 1 run data get entity @s UUID[0]
execute as @a[tag=!Knockout,tag=SnowMark,scores={snowmark=1}] at @s summon item_display run function powerups:snowglobe/mark_cloud with storage snowglobe:blizzard

scoreboard players add @e[type=item_display,tag=SnowMarkCloud] CmdData 1
execute as @e[type=item_display,tag=SnowMarkCloud,scores={CmdData=2}] at @s run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,0.0f]}}
execute as @e[type=item_display,tag=SnowMarkCloud,tag=!DespawnCloud] at @s run function powerups:snowglobe/trackplayer
scoreboard players reset @a[tag=!SnowMark,scores={snowmark=1..}] snowmark

execute as @e[type=item_display,tag=SnowMarkCloud,tag=DespawnCloud] run scoreboard players add @s snowmark 1
execute as @e[type=item_display,tag=SnowMarkCloud,tag=DespawnCloud,scores={snowmark=1}] run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{scale:[0.0f,0.0f,0.0f],translation:[0.0f,1.0f,0.0f]}}
execute as @e[type=item_display,tag=SnowMarkCloud,tag=DespawnCloud,scores={snowmark=4}] at @s run particle small_gust ~ ~1 ~ 0.1 0.1 0.1 0.1 10 force
execute as @e[type=item_display,tag=SnowMarkCloud,tag=DespawnCloud,scores={snowmark=4}] at @s run particle cloud ~ ~1 ~ 0.1 0.1 0.1 0.1 4 force
execute as @e[type=item_display,tag=SnowMarkCloud,tag=DespawnCloud,scores={snowmark=4..}] run kill @s 

execute as @e[type=item_display,tag=SnowMarkCloud,tag=!DespawnCloud] at @s run particle snowflake ~ ~1 ~ 0.3 0 0.3 0.01 1 force
tag @a[scores={snowmark=200..}] remove SnowMark
tag @a[tag=Knockout,tag=SnowMark] remove SnowMark

#> Speed up snowball throwing
execute as @a[tag=InFriendlyCloud,predicate=powerups:snowball_normal_mainhand] run scoreboard players reset @s snowballcounter
execute as @a[tag=InFriendlyCloud,predicate=powerups:snowball_normal_offhand] run scoreboard players reset @s snowballcounter
execute as @a[tag=InFriendlyCloud,predicate=powerups:snowball_normal_mainhand] run item modify entity @s weapon.mainhand powerups:snowball_blizzard
execute as @a[tag=InFriendlyCloud,predicate=powerups:snowball_normal_offhand] run item modify entity @s weapon.offhand powerups:snowball_blizzard
execute as @a[tag=!InFriendlyCloud,predicate=powerups:snowball_blizzard_mainhand] run item modify entity @s weapon.mainhand powerups:snowball
execute as @a[tag=!InFriendlyCloud,predicate=powerups:snowball_blizzard_offhand] run item modify entity @s weapon.offhand powerups:snowball

#> Pulse
execute as @e[type=item_display,tag=StormCloudMain,scores={CmdData=10..265}] run function powerups:snowglobe/random_wobble

#> Overall player effects
scoreboard players reset @a[tag=!InEnemyCloud,scores={blizzardtime=1..}] blizzardtime
scoreboard players add @a[tag=InEnemyCloud] blizzardtime 1
execute as @a[tag=InEnemyCloud,scores={blizzardtime=5}] run scoreboard players add @s playerDamage 3
execute as @a[tag=InEnemyCloud,scores={blizzardtime=5}] run damage @s 1 starve
execute as @a[tag=InEnemyCloud,scores={blizzardtime=10..}] run scoreboard players reset @s blizzardtime

effect give @a[tag=InEnemyCloud,tag=!Knockout] slowness 1 3 true
execute as @a[tag=InEnemyCloud] at @s anchored eyes run particle snowflake ^ ^ ^0.3 0.2 0.2 0.2 0.04 1 force