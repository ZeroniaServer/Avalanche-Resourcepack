scoreboard players add @s lifetime 1
execute if score @s lifetime matches 100.. run item modify entity @s contents [{"function":"minecraft:set_components","components":{"minecraft:custom_model_data":7}}]
execute if score @s lifetime matches 100.. run tag @s remove RocketGreen
execute if score @s lifetime matches 100.. run tag @s remove RocketRed

tag @a remove giveRocket
execute if entity @s[tag=RocketGreen] run tag @p[team=Green,tag=!Knockout,distance=..1] add giveRocket
execute if entity @s[tag=RocketRed] run tag @p[team=Red,tag=!Knockout,distance=..1] add giveRocket
execute if entity @s[tag=!RocketGreen,tag=!RocketRed] run tag @p[team=!Spectator,team=!Lobby,tag=!Knockout,distance=..1] add giveRocket
execute as @p[tag=giveRocket] run loot give @s loot powerups:rocket
execute as @p[tag=giveRocket] at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.25 2
execute if entity @p[tag=giveRocket] run kill