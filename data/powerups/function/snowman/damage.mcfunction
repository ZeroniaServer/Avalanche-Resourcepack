#> Non-valid damage type
execute as @a[tag=hitter,limit=1] unless entity @s[advancements={entityid:hit={iceball=true}}] unless entity @s[advancements={entityid:hit={icicle=true}}] unless entity @s[advancements={entityid:hit={snowball=true}}] run return fail

#> Icicle (instant KO)
execute if entity @a[tag=hitter,limit=1,advancements={entityid:hit={icicle=true}}] run scoreboard players set @s playerHP 0
execute as @a[tag=hitter,limit=1,advancements={entityid:hit={icicle=true}}] run function powerups:icicle/damage

#> Iceball (instant KO)
execute if entity @a[tag=hitter,limit=1,advancements={entityid:hit={iceball=true}}] run scoreboard players set @s playerHP 0

#> Snowball
execute if entity @a[tag=hitter,limit=1,advancements={entityid:hit={snowball=true}}] run scoreboard players remove @s playerHP 150
execute if entity @a[tag=hitter,limit=1,advancements={entityid:hit={snowman=true}}] run scoreboard players remove @s playerHP 150

#> Hurt anim
tag @s[tag=Spawned,tag=!Dying] add Hurt
tag @s[tag=Spawned,tag=Shooting,scores={CmdData=69..107}] add DelayShot
execute at @s[tag=Spawned,tag=Hurt,tag=!Dying,tag=!DelayShot] run function powerups:snowman/stop_all_anims
execute at @s[tag=Spawned,tag=Hurt,tag=!Dying,tag=!DelayShot] run function animated_java:snowman/animations/damage/play
execute at @s[tag=Spawned,tag=Hurt] run playsound snowmanhurt master @a ~ ~ ~ 0.4 1
execute at @s[tag=Spawned,tag=Hurt] run playsound snowmanhurt master @a ~ ~ ~ 0.4 1.2
tag @s[type=item_display,tag=Snowman,tag=Spawned,tag=Hurt,tag=!Dying,tag=Spawned] remove Hurt
tag @s[tag=Spawned,tag=Shooting,tag=Hurt] add DelayShot