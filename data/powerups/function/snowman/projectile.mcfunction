rotate @s ~ ~
execute at @s if entity @e[type=item_display,tag=Snowman,tag=Red,limit=1,sort=nearest,distance=..2] facing entity @p[team=Green,tag=!Knockout] eyes run rotate @s ~ ~
execute at @s if entity @e[type=item_display,tag=Snowman,tag=Green,limit=1,sort=nearest,distance=..2] facing entity @p[team=Red,tag=!Knockout] eyes run rotate @s ~ ~
execute at @s run tp @s ^ ^0.6 ^1

data modify storage snowman:projectile Pos set from entity @s Pos
execute store result score @s x run data get storage snowman:projectile Pos[0] 1000000
execute store result score @s y run data get storage snowman:projectile Pos[1] 1000000
execute store result score @s z run data get storage snowman:projectile Pos[2] 1000000

execute at @s run tp @s ^ ^ ^0.001

data modify storage snowman:projectile Pos set from entity @s Pos
execute store result score @s dx run data get storage snowman:projectile Pos[0] 1000000
execute store result score @s dy run data get storage snowman:projectile Pos[1] 1000000
execute store result score @s dz run data get storage snowman:projectile Pos[2] 1000000

scoreboard players operation @s dx -= @s x
scoreboard players operation @s dy -= @s y
scoreboard players operation @s dz -= @s z

#########
#How to change the speed:
#		"(...) Motion[0] double 0.002 (...)"		<--- the bigger this number, the faster the entity
#########

execute store result storage snowman:projectile x double 0.0019 run scoreboard players get @s dx
execute store result storage snowman:projectile y double 0.001 run scoreboard players get @s dy
execute store result storage snowman:projectile z double 0.0019 run scoreboard players get @s dz

function powerups:snowman/summon_snowball with storage snowman:projectile

kill @s