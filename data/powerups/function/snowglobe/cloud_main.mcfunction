tag @a[tag=InEnemyCloud] remove InEnemyCloud
tag @a[tag=InFriendlyCloud] remove InFriendlyCloud

#> Cloud spawning animation
data merge entity @s[scores={CmdData=2}] {interpolation_duration:6,start_interpolation:0,transformation:{scale:[2.0f,3.0f,2.0f],translation:[0.0f,1.5f,0.0f]}}
data merge entity @s[scores={CmdData=8}] {interpolation_duration:3,start_interpolation:0,transformation:{scale:[2.5f,2.5f,2.5f],translation:[0.0f,1.5f,0.0f]}}

#> Cloud particles
execute at @s[scores={CmdData=5..250}] run particle snowflake ~ ~0.3 ~ 1.5 0.2 1.5 0 3 force @a

#> Despawn
data merge entity @s[scores={CmdData=270}] {interpolation_duration:10,start_interpolation:0,transformation:{scale:[0.0f,1.0f,0.0f]}}
data merge entity @s[scores={CmdData=275}] {interpolation_duration:10,start_interpolation:0,transformation:{scale:[0.0f,0.0f,0.0f]}}
execute at @s[scores={CmdData=285}] run particle small_gust ~ ~-0.2 ~ 0.1 0.1 0.1 0.5 15 force
execute at @s[scores={CmdData=285}] run particle cloud ~ ~-0.2 ~ 0.1 0.1 0.1 0.04 5 force
execute at @s[scores={CmdData=290..}] on passengers run kill @s
kill @s[scores={CmdData=290..}]

#> Blizzard sounds
execute at @s[scores={CmdData=1}] run playsound minecraft:snowglobe_blizzard_1 master @a[distance=..24] ~ ~ ~ 0.2 1
execute at @s[scores={CmdData=21}] run playsound minecraft:snowglobe_blizzard_2 master @a[distance=..24] ~ ~ ~ 0.2 1
execute at @s[scores={CmdData=41}] run playsound minecraft:snowglobe_blizzard_3 master @a[distance=..24] ~ ~ ~ 0.2 1
execute at @s[scores={CmdData=61}] run playsound minecraft:snowglobe_blizzard_4 master @a[distance=..24] ~ ~ ~ 0.2 1
execute at @s[scores={CmdData=81}] run playsound minecraft:snowglobe_blizzard_5 master @a[distance=..24] ~ ~ ~ 0.2 1
execute at @s[scores={CmdData=101}] run playsound minecraft:snowglobe_blizzard_6 master @a[distance=..24] ~ ~ ~ 0.2 1
execute at @s[scores={CmdData=121}] run playsound minecraft:snowglobe_blizzard_7 master @a[distance=..24] ~ ~ ~ 0.2 1
execute at @s[scores={CmdData=141}] run playsound minecraft:snowglobe_blizzard_8 master @a[distance=..24] ~ ~ ~ 0.2 1
execute at @s[scores={CmdData=161}] run playsound minecraft:snowglobe_blizzard_9 master @a[distance=..24] ~ ~ ~ 0.2 1
execute at @s[scores={CmdData=181}] run playsound minecraft:snowglobe_blizzard_10 master @a[distance=..24] ~ ~ ~ 0.2 1
execute at @s[scores={CmdData=201}] run playsound minecraft:snowglobe_blizzard_11 master @a[distance=..24] ~ ~ ~ 0.2 1
execute at @s[scores={CmdData=221}] run playsound minecraft:snowglobe_blizzard_12 master @a[distance=..24] ~ ~ ~ 0.2 1
execute at @s[scores={CmdData=241}] run playsound minecraft:snowglobe_blizzard_13 master @a[distance=..24] ~ ~ ~ 0.2 1
execute at @s[scores={CmdData=261}] run playsound minecraft:snowglobe_blizzard_14 master @a[distance=..24] ~ ~ ~ 0.2 1
execute at @s[scores={CmdData=281}] run playsound minecraft:snowglobe_blizzard_15 master @a[distance=..24] ~ ~ ~ 0.2 1

#> Damage enemies over time
execute at @s[tag=Red,scores={CmdData=1..260}] positioned ~-3.5 ~-5.5 ~-3.5 run tag @a[team=Green,tag=!Knockout,dx=6,dy=6,dz=6] add InEnemyCloud
execute at @s[tag=Red,scores={CmdData=1..260}] positioned ~-3.5 ~-5.5 ~-3.5 run tag @a[team=Red,tag=!Knockout,dx=6,dy=6,dz=6] add InFriendlyCloud
execute at @s[tag=Green,scores={CmdData=1..260}] positioned ~-3.5 ~-5.5 ~-3.5 run tag @a[team=Red,tag=!Knockout,dx=6,dy=6,dz=6] add InEnemyCloud
execute at @s[tag=Green,scores={CmdData=1..260}] positioned ~-3.5 ~-5.5 ~-3.5 run tag @a[team=Green,tag=!Knockout,dx=6,dy=6,dz=6] add InFriendlyCloud

#> Heal Snowmen in range to full HP
execute at @s[tag=Green,scores={CmdData=1..260}] positioned ~-3.5 ~-5.5 ~-3.5 as @e[type=item_display,tag=Snowman,tag=Green,tag=!Dying,dx=3.5,dy=3.5,dz=3.5,scores={playerHP=1..898}] at @s run particle heart ~ ~1 ~ 0.5 0.5 0.5 0.1 5 force
execute at @s[tag=Red,scores={CmdData=1..260}] positioned ~-3.5 ~-5.5 ~-3.5 as @e[type=item_display,tag=Snowman,tag=Red,tag=!Dying,dx=3.5,dy=3.5,dz=3.5,scores={playerHP=1..898}] at @s run particle heart ~ ~1 ~ 0.5 0.5 0.5 0.1 5 force
execute at @s[tag=Green,scores={CmdData=1..260}] positioned ~-3.5 ~-5.5 ~-3.5 run scoreboard players set @e[type=item_display,tag=Snowman,tag=Green,tag=!Dying,dx=3.5,dy=3.5,dz=3.5,scores={playerHP=1..900}] playerHP 900
execute at @s[tag=Red,scores={CmdData=1..260}] positioned ~-3.5 ~-5.5 ~-3.5 run scoreboard players set @e[type=item_display,tag=Snowman,tag=Red,tag=!Dying,dx=3.5,dy=3.5,dz=3.5,scores={playerHP=1..900}] playerHP 900

#> Extinguish enemy campfires
execute at @s[tag=Red,scores={CmdData=1..260}] positioned ~-3.5 ~-5.5 ~-3.5 run scoreboard players add @e[type=item_display,tag=CampfireMain,tag=!Extinguish,tag=!Reviving,scores={CmdData=20..585},tag=Green,dx=3.5,dy=3.5,dz=3.5] CmdData 5
execute at @s[tag=Green,scores={CmdData=1..260}] positioned ~-3.5 ~-5.5 ~-3.5 run scoreboard players add @e[type=item_display,tag=CampfireMain,tag=!Extinguish,tag=!Reviving,scores={CmdData=20..585},tag=Red,dx=3.5,dy=3.5,dz=3.5] CmdData 5

#> Snow-Mark nearby players
execute at @s[tag=Red,scores={CmdData=1..260}] positioned ~-4.5 ~-5.5 ~-4.5 run tag @a[team=Green,tag=!Knockout,tag=!IFrame,dx=8.5,dy=8.5,dz=8.5] add SnowMark
execute at @s[tag=Green,scores={CmdData=1..260}] positioned ~-4.5 ~-5.5 ~-4.5 run tag @a[team=Red,tag=!Knockout,tag=!IFrame,dx=8.5,dy=8.5,dz=8.5] add SnowMark
execute at @s[tag=Red,scores={CmdData=1..260}] positioned ~-4.5 ~-5.5 ~-4.5 run scoreboard players set @a[team=Green,tag=!Knockout,dx=8.5,dy=8.5,dz=8.5,scores={snowmark=2..}] snowmark 2
execute at @s[tag=Green,scores={CmdData=1..260}] positioned ~-4.5 ~-5.5 ~-4.5 run scoreboard players set @a[team=Red,tag=!Knockout,dx=8.5,dy=8.5,dz=8.5,scores={snowmark=2..}] snowmark 2

#> Pulse
execute if entity @s[scores={CmdData=10..265}] run function powerups:snowglobe/random_wobble

#> Speed up snowball throwing
execute as @a[tag=InFriendlyCloud,predicate=powerups:snowball_normal_mainhand] run scoreboard players reset @s snowballcounter
execute as @a[tag=InFriendlyCloud,predicate=powerups:snowball_normal_offhand] run scoreboard players reset @s snowballcounter
execute as @a[tag=InFriendlyCloud,predicate=powerups:snowball_normal_mainhand] run item modify entity @s weapon.mainhand powerups:snowball_blizzard
execute as @a[tag=InFriendlyCloud,predicate=powerups:snowball_normal_offhand] run item modify entity @s weapon.offhand powerups:snowball_blizzard
execute as @a[tag=!InFriendlyCloud,predicate=powerups:snowball_blizzard_mainhand] run item modify entity @s weapon.mainhand powerups:snowball
execute as @a[tag=!InFriendlyCloud,predicate=powerups:snowball_blizzard_offhand] run item modify entity @s weapon.offhand powerups:snowball

#> Overall player effects
scoreboard players reset @a[tag=!InEnemyCloud,scores={blizzardtime=1..}] blizzardtime
scoreboard players add @a[tag=InEnemyCloud] blizzardtime 1
execute as @a[tag=InEnemyCloud,scores={blizzardtime=5}] run scoreboard players add @s[tag=!IFrame] playerDamage 3
tag @s add self
execute as @a[tag=InEnemyCloud,scores={blizzardtime=5},tag=!Knockout] if score @s playerDamage >= @s playerHP run function powerups:snowglobe/knockout
tag @s remove self
execute as @a[tag=InEnemyCloud,scores={blizzardtime=5}] run damage @s 1 starve
execute as @a[tag=InEnemyCloud,scores={blizzardtime=10..}] run scoreboard players reset @s blizzardtime

effect give @a[tag=InEnemyCloud,tag=!Knockout] slowness 1 3 true
execute as @a[tag=InEnemyCloud] at @s anchored eyes run particle snowflake ^ ^ ^0.3 0.2 0.2 0.2 0.04 1 force