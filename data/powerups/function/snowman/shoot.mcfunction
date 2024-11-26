execute on passengers if entity @s[type=area_effect_cloud] run data modify storage snowman:projectile UUID set from entity @s Owner
execute on passengers on passengers if entity @s[type=husk] run data modify storage snowman:projectile self set from entity @s UUID

#Red
execute at @s[tag=Red,tag=Spawned,tag=Targeting,tag=!Shooting,tag=!Dying] if entity @a[team=Green,tag=snowmanTarget,limit=1,distance=..11] run scoreboard players set @s CmdData 50
execute at @s[tag=Red,tag=Spawned,tag=Targeting,tag=!Shooting,tag=!Dying] if entity @a[team=Green,tag=snowmanTarget,limit=1,distance=..11] run tag @s add Shooting

execute at @s[tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] unless score @s CmdData matches 70.. unless entity @a[team=Green,tag=snowmanTarget,limit=1,distance=..11] run tag @s remove Shooting

tag @s[tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying,scores={CmdData=70}] remove DelayShot
execute at @s[tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying,scores={CmdData=70}] run function powerups:snowman/stop_all_anims
execute at @s[tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying,scores={CmdData=70}] run function animated_java:snowman/animations/prepare_shot/play

execute at @s[tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying,scores={CmdData=70..72}] run particle snowflake ^-1 ^1.2 ^ 0 0 0 0.02 2 force
execute at @s[tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying,scores={CmdData=70..72}] run playsound block.powder_snow.place master @a ~ ~ ~ 0.3 1.7

execute at @s[tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying,scores={CmdData=80..82}] run particle snowflake ^1 ^1.2 ^ 0 0 0 0.02 2 force
execute at @s[tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying,scores={CmdData=80..82}] run playsound block.powder_snow.place master @a ~ ~ ~ 0.3 2

execute at @s[tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying,scores={CmdData=85}] run function powerups:snowman/stop_all_anims
execute at @s[tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying,scores={CmdData=85}] run function animated_java:snowman/animations/shoot/play
execute at @s[tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying,scores={CmdData=85}] run playsound block.powder_snow.place master @a ~ ~ ~ 0.6 0.7
execute at @s[tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying,scores={CmdData=91}] run playsound block.powder_snow.place master @a ~ ~ ~ 0.6 0.6
execute at @s[tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying,scores={CmdData=93}] run playsound entity.snow_golem.shoot master @a ~ ~ ~ 0.4 1.2
execute at @s[tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying,scores={CmdData=93}] positioned ^-0.4 ^1 ^ summon marker run function powerups:snowman/projectile

execute at @s[tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying,scores={CmdData=100}] run playsound block.powder_snow.place master @a ~ ~ ~ 0.6 0.7
execute at @s[tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying,scores={CmdData=103}] run playsound block.powder_snow.place master @a ~ ~ ~ 0.6 0.6
execute at @s[tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying,scores={CmdData=106}] run playsound entity.snow_golem.shoot master @a ~ ~ ~ 0.4 1.2
execute at @s[tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying,scores={CmdData=106}] positioned ^0.4 ^1 ^ summon marker run function powerups:snowman/projectile
execute at @s[tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=DelayShot,tag=!Dying,scores={CmdData=115..}] run function powerups:snowman/reset_delay
scoreboard players set @s[tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!DelayShot,tag=!Dying,scores={CmdData=115..}] CmdData 68



#Green
execute at @s[tag=Green,tag=Spawned,tag=Targeting,tag=!Shooting,tag=!Dying] if entity @a[team=Red,tag=snowmanTarget,limit=1,distance=..11] run scoreboard players set @s CmdData 50
execute at @s[tag=Green,tag=Spawned,tag=Targeting,tag=!Shooting,tag=!Dying] if entity @a[team=Red,tag=snowmanTarget,limit=1,distance=..11] run tag @s add Shooting

execute at @s[tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] unless score @s CmdData matches 70.. unless entity @a[team=Red,tag=snowmanTarget,limit=1,distance=..11] run tag @s remove Shooting

tag @s[tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying,scores={CmdData=70}] remove DelayShot
execute at @s[tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying,scores={CmdData=70}] run function powerups:snowman/stop_all_anims
execute at @s[tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying,scores={CmdData=70}] run function animated_java:snowman/animations/prepare_shot/play

execute at @s[tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying,scores={CmdData=70..72}] run particle snowflake ^-1 ^1.2 ^ 0 0 0 0.02 2 force
execute at @s[tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying,scores={CmdData=70..72}] run playsound block.powder_snow.place master @a ~ ~ ~ 0.3 1.7

execute at @s[tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying,scores={CmdData=80..82}] run particle snowflake ^1 ^1.2 ^ 0 0 0 0.02 2 force
execute at @s[tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying,scores={CmdData=80..82}] run playsound block.powder_snow.place master @a ~ ~ ~ 0.3 2

execute at @s[tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying,scores={CmdData=85}] run function powerups:snowman/stop_all_anims
execute at @s[tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying,scores={CmdData=85}] run function animated_java:snowman/animations/shoot/play
execute at @s[tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying,scores={CmdData=85}] run playsound block.powder_snow.place master @a ~ ~ ~ 0.6 0.7
execute at @s[tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying,scores={CmdData=91}] run playsound block.powder_snow.place master @a ~ ~ ~ 0.6 0.6
execute at @s[tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying,scores={CmdData=93}] run playsound entity.snow_golem.shoot master @a ~ ~ ~ 0.4 1.2
execute at @s[tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying,scores={CmdData=93}] positioned ^-0.4 ^1 ^ summon marker run function powerups:snowman/projectile

execute at @s[tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying,scores={CmdData=100}] run playsound block.powder_snow.place master @a ~ ~ ~ 0.6 0.7
execute at @s[tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying,scores={CmdData=103}] run playsound block.powder_snow.place master @a ~ ~ ~ 0.6 0.6
execute at @s[tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying,scores={CmdData=106}] run playsound entity.snow_golem.shoot master @a ~ ~ ~ 0.4 1.2
execute at @s[tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying,scores={CmdData=106}] positioned ^0.4 ^1 ^ summon marker run function powerups:snowman/projectile
execute at @s[tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=DelayShot,tag=!Dying,scores={CmdData=115..}] run function powerups:snowman/reset_delay
scoreboard players set @s[tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!DelayShot,tag=!Dying,scores={CmdData=115..}] CmdData 68