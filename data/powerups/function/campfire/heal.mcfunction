execute if entity @s[tag=Green,tag=CampfireMain] as @a[team=Green,distance=..3,tag=!Knockout,scores={playerHP=1..19}] run function powerups:campfire/particle
execute if entity @s[tag=Red,tag=CampfireMain] as @a[team=Red,distance=..3,tag=!Knockout,scores={playerHP=1..19}] run function powerups:campfire/particle

execute if entity @s[tag=Green,tag=BaseCampfire] as @a[team=Green,distance=..3,tag=!Knockout,scores={playerHP=1..19}] run function player:campfire_particle
execute if entity @s[tag=Red,tag=BaseCampfire] as @a[team=Red,distance=..3,tag=!Knockout,scores={playerHP=1..19}] run function player:campfire_particle

scoreboard players add @s healticks 1
execute if entity @s[tag=Green,scores={healticks=10..12}] run tag @a[team=Green,tag=!Knockout,tag=Snowmark,scores={playerHP=1..19},distance=..3] remove Snowmark
execute if entity @s[tag=Green,scores={healticks=10..12}] run scoreboard players add @a[team=Green,tag=!Knockout,scores={playerHP=1..19},distance=..3] playerHP 1
execute if entity @s[tag=Red,scores={healticks=10..12}] run tag @a[team=Red,tag=!Knockout,tag=Snowmark,scores={playerHP=1..19},distance=..3] remove Snowmark
execute if entity @s[tag=Red,scores={healticks=10..12}] run scoreboard players add @a[team=Red,tag=!Knockout,scores={playerHP=1..19},distance=..3] playerHP 1

execute if entity @s[tag=Green,scores={healticks=10}] as @a[team=Green,tag=!Knockout,scores={playerHP=1..19},distance=..3] at @s run particle heart ~ ~1 ~ 0.4 0.4 0.4 0.1 1 force
execute if entity @s[tag=Red,scores={healticks=10}] as @a[team=Red,tag=!Knockout,scores={playerHP=1..19},distance=..3] at @s run particle heart ~ ~1 ~ 0.4 0.4 0.4 0.1 1 force

scoreboard players reset @s[scores={healticks=12..}] healticks