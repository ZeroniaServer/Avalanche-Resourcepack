#Red
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=!Targeting,tag=!Dying,tag=!CoalBlind] at @s if entity @a[team=Green,tag=!Knockout,distance=..13] run function powerups:snowman/stop_all_anims
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=!Targeting,tag=!Dying,tag=!CoalBlind] at @s if entity @a[team=Green,tag=!Knockout,distance=..13] run function animated_java:snowman/animations/target_player/play
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=!Targeting,tag=!Dying,tag=!CoalBlind] at @s if entity @a[team=Green,tag=!Knockout,distance=..13] run scoreboard players set @s CmdData 50
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=!Targeting,tag=!Dying,tag=!CoalBlind] at @s if entity @a[team=Green,tag=!Knockout,distance=..13] run tag @s add Targeting

execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=!Shooting] at @s if score @s CmdData matches 51 run playsound block.powder_snow.fall master @a ~ ~ ~ 1 1.3
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=!Shooting] at @s if score @s CmdData matches 57 run playsound block.snow.fall master @a ~ ~ ~ 1 1
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=!Shooting] at @s if score @s CmdData matches 57 run particle block{block_state:snow_block} ~ ~ ~ 0.1 0 0.1 0.1 20 force
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=!Shooting] at @s if score @s CmdData matches 200.. run scoreboard players set @s CmdData 60


execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=!Shooting,tag=!Dying] at @s unless entity @a[team=Green,tag=!Knockout,distance=..13] run function powerups:snowman/stop_all_anims
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=!Shooting,tag=!Dying] at @s unless entity @a[team=Green,tag=!Knockout,distance=..13] run function animated_java:snowman/animations/untarget_player/play
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=!Shooting,tag=!Dying] at @s unless entity @a[team=Green,tag=!Knockout,distance=..13] run scoreboard players set @s CmdData 50
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=!Shooting,tag=!Dying] at @s unless entity @a[team=Green,tag=!Knockout,distance=..13] run tag @s remove Targeting

execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=CoalBlind,tag=!Dying] at @s run function powerups:snowman/stop_all_anims
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=CoalBlind,tag=!Dying] at @s run function animated_java:snowman/animations/untarget_player/play
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=CoalBlind,tag=!Dying] at @s run scoreboard players set @s CmdData 50
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=CoalBlind,tag=!Dying] at @s run tag @s remove Targeting

execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=!Dying,tag=!CoalBlind] at @s run tp @s ~ ~ ~ facing entity @p[team=Green,tag=!Knockout,distance=..10]
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=!Dying] at @s run rotate @s ~ 0

#Green
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=!Targeting,tag=!Dying,tag=!CoalBlind] at @s if entity @a[team=Red,tag=!Knockout,distance=..13] run function powerups:snowman/stop_all_anims
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=!Targeting,tag=!Dying,tag=!CoalBlind] at @s if entity @a[team=Red,tag=!Knockout,distance=..13] run function animated_java:snowman/animations/target_player/play
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=!Targeting,tag=!Dying,tag=!CoalBlind] at @s if entity @a[team=Red,tag=!Knockout,distance=..13] run scoreboard players set @s CmdData 50
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=!Targeting,tag=!Dying,tag=!CoalBlind] at @s if entity @a[team=Red,tag=!Knockout,distance=..13] run tag @s add Targeting

execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=!Shooting] at @s if score @s CmdData matches 51 run playsound block.powder_snow.fall master @a ~ ~ ~ 1 1.3
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=!Shooting] at @s if score @s CmdData matches 57 run playsound block.snow.fall master @a ~ ~ ~ 1 1
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=!Shooting] at @s if score @s CmdData matches 57 run particle block{block_state:snow_block} ~ ~ ~ 0.1 0 0.1 0.1 20 force
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=!Shooting] at @s if score @s CmdData matches 200.. run scoreboard players set @s CmdData 60


execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=!Shooting,tag=!Dying] at @s unless entity @a[team=Red,tag=!Knockout,distance=..13] run function powerups:snowman/stop_all_anims
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=!Shooting,tag=!Dying] at @s unless entity @a[team=Red,tag=!Knockout,distance=..13] run function animated_java:snowman/animations/untarget_player/play
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=!Shooting,tag=!Dying] at @s unless entity @a[team=Red,tag=!Knockout,distance=..13] run scoreboard players set @s CmdData 50
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=!Shooting,tag=!Dying] at @s unless entity @a[team=Red,tag=!Knockout,distance=..13] run tag @s remove Targeting

execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=CoalBlind,tag=!Dying] at @s run function powerups:snowman/stop_all_anims
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=CoalBlind,tag=!Dying] at @s run function animated_java:snowman/animations/untarget_player/play
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=CoalBlind,tag=!Dying] at @s run scoreboard players set @s CmdData 50
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=CoalBlind,tag=!Dying] at @s run tag @s remove Targeting

execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=!Dying,tag=!CoalBlind] at @s run tp @s ~ ~ ~ facing entity @p[team=Red,tag=!Knockout,distance=..10]
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=!Dying] at @s run rotate @s ~ 0