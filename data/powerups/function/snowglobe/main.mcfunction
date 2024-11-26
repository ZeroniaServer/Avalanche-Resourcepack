execute as @e[type=item_display,tag=Snowglobe] at @s run function powerups:snowglobe/display

#> Snow-Mark behavior
scoreboard players add @a[tag=SnowMark] snowmark 1
execute as @a[tag=!Knockout,tag=SnowMark,scores={snowmark=1}] store result storage snowglobe:blizzard uuid int 1 run data get entity @s UUID[0]
execute as @a[tag=!Knockout,tag=SnowMark,scores={snowmark=1}] at @s summon item_display run function powerups:snowglobe/summon_mark_cloud with storage snowglobe:blizzard
execute as @e[type=item_display,tag=SnowMarkCloud] run function powerups:snowglobe/mark_cloud
scoreboard players reset @a[tag=!SnowMark,scores={snowmark=1..}] snowmark
tag @a[scores={snowmark=200..}] remove SnowMark
tag @a[tag=Knockout,tag=SnowMark] remove SnowMark