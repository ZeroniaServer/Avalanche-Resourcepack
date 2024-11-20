scoreboard players add @s lifetime 1
execute if score @s lifetime matches 100.. run item modify entity @s contents [{"function":"minecraft:set_components","components":{"minecraft:custom_model_data":7}}]
execute if score @s lifetime matches 100.. run tag @s remove RocketItemGreen
execute if score @s lifetime matches 100.. run tag @s remove RocketItemRed

tag @a remove giveRocket
execute if entity @s[tag=RocketItemGreen] run tag @p[team=Green,tag=!Knockout,distance=..1] add giveRocket
execute if entity @s[tag=RocketItemRed] run tag @p[team=Red,tag=!Knockout,distance=..1] add giveRocket
execute if score @s lifetime matches 100.. run tag @p[team=!Spectator,team=!Lobby,tag=!Knockout,distance=..1] add giveRocket
data modify entity @s Owner set from entity @p[tag=giveRocket] UUID
data modify entity @s Thrower set from entity @p[tag=giveRocket] UUID
execute if entity @p[team=Green,tag=giveRocket] run item modify entity @s contents powerups:rocket_green
execute if entity @p[team=Red,tag=giveRocket] run item modify entity @s contents powerups:rocket_red
execute if entity @p[tag=giveRocket] run tag @s remove RocketItem