#Red
# TODO: Ev, add iris check here, if there is a clear line of sight (no blocks blocking view) in a 11 block range, add a "HasLOS" tag.
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=!Shooting,tag=!Dying,tag=HasLOS] at @s if entity @a[team=Green,tag=!Knockout,distance=..11] run scoreboard players set @s CmdData 50
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=!Shooting,tag=!Dying,tag=HasLOS] at @s if entity @a[team=Green,tag=!Knockout,distance=..11] run tag @s add Shooting

execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s unless score @s CmdData matches 70.. unless entity @a[team=Green,tag=!Knockout,distance=..11] run tag @s remove Shooting

execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 70 run tag @s remove DelayShot
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 70 run function powerups:snowman/stop_all_anims
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 70 run function animated_java:snowman/animations/prepare_shot/play

execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 70..72 run particle snowflake ^-1 ^1.2 ^ 0 0 0 0.02 2 force
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 70..72 run playsound block.powder_snow.place master @a ~ ~ ~ 0.3 1.7

execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 80..82 run particle snowflake ^1 ^1.2 ^ 0 0 0 0.02 2 force
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 80..82 run playsound block.powder_snow.place master @a ~ ~ ~ 0.3 2

execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 85 run function powerups:snowman/stop_all_anims
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 85 run function animated_java:snowman/animations/shoot/play
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 85 run playsound block.powder_snow.place master @a ~ ~ ~ 0.6 0.7
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 91 run playsound block.powder_snow.place master @a ~ ~ ~ 0.6 0.6
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 93 run playsound entity.snow_golem.shoot master @a ~ ~ ~ 0.4 1.2
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 93 positioned ^-0.4 ^1 ^ summon marker run function powerups:snowman/projectile

execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 100 run playsound block.powder_snow.place master @a ~ ~ ~ 0.6 0.7
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 103 run playsound block.powder_snow.place master @a ~ ~ ~ 0.6 0.6
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 106 run playsound entity.snow_golem.shoot master @a ~ ~ ~ 0.4 1.2
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 106 positioned ^0.4 ^1 ^ summon marker run function powerups:snowman/projectile
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 115.. run tag @s remove HasLOS
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=DelayShot,tag=!Dying] at @s if score @s CmdData matches 115.. run function powerups:snowman/reset_delay
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!DelayShot,tag=!Dying] at @s if score @s CmdData matches 115.. run scoreboard players set @s[tag=!DelayShot] CmdData 68



#Green
# TODO: Ev, add iris check here, if there is a clear line of sight (no blocks blocking view) in a 11 block range, add a "HasLOS" tag.
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=!Shooting,tag=!Dying,tag=HasLOS] at @s if entity @a[team=Red,tag=!Knockout,distance=..11] run scoreboard players set @s CmdData 50
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=!Shooting,tag=!Dying,tag=HasLOS] at @s if entity @a[team=Red,tag=!Knockout,distance=..11] run tag @s add Shooting

execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s unless score @s CmdData matches 70.. unless entity @a[team=Red,tag=!Knockout,distance=..11] run tag @s remove Shooting

execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 70 run tag @s remove DelayShot
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 70 run function powerups:snowman/stop_all_anims
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 70 run function animated_java:snowman/animations/prepare_shot/play

execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 70..72 run particle snowflake ^-1 ^1.2 ^ 0 0 0 0.02 2 force
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 70..72 run playsound block.powder_snow.place master @a ~ ~ ~ 0.3 1.7

execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 80..82 run particle snowflake ^1 ^1.2 ^ 0 0 0 0.02 2 force
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 80..82 run playsound block.powder_snow.place master @a ~ ~ ~ 0.3 2

execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 85 run function powerups:snowman/stop_all_anims
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 85 run function animated_java:snowman/animations/shoot/play
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 85 run playsound block.powder_snow.place master @a ~ ~ ~ 0.6 0.7
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 91 run playsound block.powder_snow.place master @a ~ ~ ~ 0.6 0.6
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 93 run playsound entity.snow_golem.shoot master @a ~ ~ ~ 0.4 1.2
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 93 positioned ^-0.4 ^1 ^ summon marker run function powerups:snowman/projectile

execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 100 run playsound block.powder_snow.place master @a ~ ~ ~ 0.6 0.7
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 103 run playsound block.powder_snow.place master @a ~ ~ ~ 0.6 0.6
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 106 run playsound entity.snow_golem.shoot master @a ~ ~ ~ 0.4 1.2
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 106 positioned ^0.4 ^1 ^ summon marker run function powerups:snowman/projectile
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 115.. run tag @s remove HasLOS
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=DelayShot,tag=!Dying] at @s if score @s CmdData matches 115.. run function powerups:snowman/reset_delay
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!DelayShot,tag=!Dying] at @s if score @s CmdData matches 115.. run scoreboard players set @s[tag=!DelayShot] CmdData 68