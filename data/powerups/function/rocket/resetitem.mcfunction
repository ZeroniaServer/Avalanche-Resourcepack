item modify entity @s[tag=!RocketItemGreen,tag=!RocketItemRed] contents [{"function":"minecraft:set_components","components":{"minecraft:custom_model_data":7}}]
tag @s add RocketItem
data modify entity @s Owner set value [I;0,0,0,0]
data modify entity @s Thrower set value [I;0,0,0,0]
data merge entity @s {PickupDelay:100000,Age:-32768}
item modify entity @s contents [{"function":"minecraft:set_custom_data","tag":"{NoDrop:0b}"}]
scoreboard players reset @s blasttime