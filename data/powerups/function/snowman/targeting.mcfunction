#Red
execute at @s[tag=Red,tag=Spawned,tag=!Targeting,tag=!Dying,tag=!CoalBlind] if entity @a[team=Green,tag=!Knockout,distance=..13] run function powerups:snowman/stop_all_anims
execute at @s[tag=Red,tag=Spawned,tag=!Targeting,tag=!Dying,tag=!CoalBlind] if entity @a[team=Green,tag=!Knockout,distance=..13] run function animated_java:snowman/animations/target_player/play
execute at @s[tag=Red,tag=Spawned,tag=!Targeting,tag=!Dying,tag=!CoalBlind] if entity @a[team=Green,tag=!Knockout,distance=..13] run scoreboard players set @s CmdData 50
execute at @s[tag=Red,tag=Spawned,tag=!Targeting,tag=!Dying,tag=!CoalBlind] if entity @a[team=Green,tag=!Knockout,distance=..13] run tag @s add Targeting

execute at @s[tag=Red,tag=Spawned,tag=Targeting,tag=!Shooting,scores={CmdData=51}] run playsound block.powder_snow.fall master @a ~ ~ ~ 1 1.3
execute at @s[tag=Red,tag=Spawned,tag=Targeting,tag=!Shooting,scores={CmdData=57}] run playsound block.snow.fall master @a ~ ~ ~ 1 1
execute at @s[tag=Red,tag=Spawned,tag=Targeting,tag=!Shooting,scores={CmdData=57}] run particle block{block_state:snow_block} ~ ~ ~ 0.1 0 0.1 0.1 20 force
scoreboard players set @s[tag=Red,tag=Spawned,tag=Targeting,tag=!Shooting,scores={CmdData=200..}] CmdData 60


execute at @s[tag=Red,tag=Spawned,tag=Targeting,tag=!Shooting,tag=!Dying] unless entity @a[team=Green,tag=!Knockout,distance=..13] run function powerups:snowman/stop_all_anims
execute at @s[tag=Red,tag=Spawned,tag=Targeting,tag=!Shooting,tag=!Dying] unless entity @a[team=Green,tag=!Knockout,distance=..13] run function animated_java:snowman/animations/untarget_player/play
execute at @s[tag=Red,tag=Spawned,tag=Targeting,tag=!Shooting,tag=!Dying] unless entity @a[team=Green,tag=!Knockout,distance=..13] run scoreboard players set @s CmdData 50
execute at @s[tag=Red,tag=Spawned,tag=Targeting,tag=!Shooting,tag=!Dying] unless entity @a[team=Green,tag=!Knockout,distance=..13] run tag @s remove Targeting

execute at @s[tag=Red,tag=Spawned,tag=Targeting,tag=CoalBlind,tag=!Dying] run function powerups:snowman/stop_all_anims
execute at @s[tag=Red,tag=Spawned,tag=Targeting,tag=CoalBlind,tag=!Dying] run function animated_java:snowman/animations/untarget_player/play
scoreboard players set @s[tag=Red,tag=Spawned,tag=Targeting,tag=CoalBlind,tag=!Dying] CmdData 50
tag @s[tag=Red,tag=Spawned,tag=Targeting,tag=CoalBlind,tag=!Dying] remove Targeting

execute at @s[tag=Red,tag=Spawned,tag=Targeting,tag=!Dying,tag=!CoalBlind] run rotate @s facing entity @p[team=Green,tag=!Knockout,distance=..10]
execute at @s[tag=Red,tag=Spawned,tag=Targeting,tag=!Dying] run rotate @s ~ 0

#Green
execute at @s[tag=Green,tag=Spawned,tag=!Targeting,tag=!Dying,tag=!CoalBlind] if entity @a[team=Red,tag=!Knockout,distance=..13] run function powerups:snowman/stop_all_anims
execute at @s[tag=Green,tag=Spawned,tag=!Targeting,tag=!Dying,tag=!CoalBlind] if entity @a[team=Red,tag=!Knockout,distance=..13] run function animated_java:snowman/animations/target_player/play
execute at @s[tag=Green,tag=Spawned,tag=!Targeting,tag=!Dying,tag=!CoalBlind] if entity @a[team=Red,tag=!Knockout,distance=..13] run scoreboard players set @s CmdData 50
execute at @s[tag=Green,tag=Spawned,tag=!Targeting,tag=!Dying,tag=!CoalBlind] if entity @a[team=Red,tag=!Knockout,distance=..13] run tag @s add Targeting

execute at @s[tag=Green,tag=Spawned,tag=Targeting,tag=!Shooting,scores={CmdData=51}] run playsound block.powder_snow.fall master @a ~ ~ ~ 1 1.3
execute at @s[tag=Green,tag=Spawned,tag=Targeting,tag=!Shooting,scores={CmdData=57}] run playsound block.snow.fall master @a ~ ~ ~ 1 1
execute at @s[tag=Green,tag=Spawned,tag=Targeting,tag=!Shooting,scores={CmdData=57}] run particle block{block_state:snow_block} ~ ~ ~ 0.1 0 0.1 0.1 20 force
execute at @s[tag=Green,tag=Spawned,tag=Targeting,tag=!Shooting,scores={CmdData=200..}] run scoreboard players set @s CmdData 60


execute at @s[tag=Green,tag=Spawned,tag=Targeting,tag=!Shooting,tag=!Dying] unless entity @a[team=Red,tag=!Knockout,distance=..13] run function powerups:snowman/stop_all_anims
execute at @s[tag=Green,tag=Spawned,tag=Targeting,tag=!Shooting,tag=!Dying] unless entity @a[team=Red,tag=!Knockout,distance=..13] run function animated_java:snowman/animations/untarget_player/play
execute at @s[tag=Green,tag=Spawned,tag=Targeting,tag=!Shooting,tag=!Dying] unless entity @a[team=Red,tag=!Knockout,distance=..13] run scoreboard players set @s CmdData 50
execute at @s[tag=Green,tag=Spawned,tag=Targeting,tag=!Shooting,tag=!Dying] unless entity @a[team=Red,tag=!Knockout,distance=..13] run tag @s remove Targeting

execute at @s[tag=Green,tag=Spawned,tag=Targeting,tag=CoalBlind,tag=!Dying] run function powerups:snowman/stop_all_anims
execute at @s[tag=Green,tag=Spawned,tag=Targeting,tag=CoalBlind,tag=!Dying] run function animated_java:snowman/animations/untarget_player/play
scoreboard players set @s[tag=Green,tag=Spawned,tag=Targeting,tag=CoalBlind,tag=!Dying] CmdData 50
tag @s[tag=Green,tag=Spawned,tag=Targeting,tag=CoalBlind,tag=!Dying] remove Targeting

execute at @s[tag=Green,tag=Spawned,tag=Targeting,tag=!Dying,tag=!CoalBlind] run rotate @s facing entity @p[team=Red,tag=!Knockout,distance=..10]
execute at @s[tag=Green,tag=Spawned,tag=Targeting,tag=!Dying] run rotate @s ~ 0