#> Icicle (instant KO)
execute if entity @a[tag=hitter,limit=1,advancements={entityid:hit={icicle=true}}] run scoreboard players set @s playerHP 0
execute as @a[tag=hitter,limit=1,advancements={entityid:hit={icicle=true}}] run function powerups:icicle/break

#> Iceball (instant KO)
execute if entity @a[tag=hitter,limit=1,advancements={entityid:hit={iceball=true}}] run scoreboard players set @s playerHP 0

#> Snowball
execute if entity @a[tag=hitter,limit=1,advancements={entityid:hit={snowball=true}}] run scoreboard players remove @s playerHP 150

#> Hurt anim
execute run tag @s[tag=Spawned,tag=!Dying] add Hurt
execute if entity @s[tag=Shooting,scores={CmdData=69..107}] run tag @s[tag=Spawned] add DelayShot
execute if entity @s[type=item_display,tag=Snowman,tag=Spawned,tag=Hurt,tag=!Dying,tag=!DelayShot] at @s run function powerups:snowman/stop_all_anims
execute if entity @s[type=item_display,tag=Snowman,tag=Spawned,tag=Hurt,tag=!Dying,tag=!DelayShot] at @s run function animated_java:snowman/animations/damage/play
execute at @s[tag=Spawned,tag=Hurt] run playsound entity.snow_golem.hurt master @a ~ ~ ~ 0.4 1
execute at @s[tag=Spawned,tag=Hurt] run playsound entity.snow_golem.hurt master @a ~ ~ ~ 0.4 1.2
execute run tag @s[type=item_display,tag=Snowman,tag=Spawned,tag=Hurt,tag=!Dying,tag=Spawned] remove Hurt
execute run tag @s[tag=Spawned,tag=Shooting,tag=Hurt] add DelayShot