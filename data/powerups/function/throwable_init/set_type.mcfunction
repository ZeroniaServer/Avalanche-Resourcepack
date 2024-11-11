#> Add tags to the arrow depending on what snowball was used
execute if entity @s[nbt={Item:{id:"minecraft:snowball",components:{"minecraft:custom_model_data":1}}}] on passengers run tag @s add Snowball
execute if entity @s[nbt={Item:{id:"minecraft:snowball",components:{"minecraft:custom_model_data":2}}}] on passengers run tag @s add Iceball
execute if entity @s[nbt={Item:{id:"minecraft:snowball",components:{"minecraft:custom_model_data":5}}}] on passengers run tag @s add Coalstock
execute if entity @s[nbt={Item:{id:"minecraft:snowball",components:{"minecraft:custom_model_data":6}}}] on passengers run tag @s add Snowglobe

#> Add team specific tags for certain items
execute if entity @s[nbt={Item:{id:"minecraft:snowball"}}] store result score @s team on origin if entity @s[team=Green]
execute if score @s team matches 1 run tag @s add Green
execute if score @s team matches 1 on passengers run tag @s add Green
execute if score @s team matches 0 run tag @s add Red
execute if score @s team matches 0 on passengers run tag @s add Red

#rocket stuff
execute if entity @s[nbt={Item:{id:"minecraft:snowball",components:{"minecraft:custom_model_data":3}}}] on passengers run tag @s add AvalancheRocket
execute if entity @s[nbt={Item:{id:"minecraft:snowball",components:{"minecraft:custom_model_data":4}}}] on passengers run tag @s add AvalancheRocket
execute if entity @s[nbt={Item:{id:"minecraft:snowball",components:{"minecraft:custom_model_data":3}}}] on passengers run tag @s add RocketGreen
execute if entity @s[nbt={Item:{id:"minecraft:snowball",components:{"minecraft:custom_model_data":4}}}] on passengers run tag @s add RocketRed

tag @s add HasType

scoreboard players reset @s CmdData
tag @s remove owned