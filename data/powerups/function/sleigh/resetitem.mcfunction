tag @s add SleighItem
tag @s add IsSleighItem
data modify entity @s Owner set value [I;0,0,0,0]
data modify entity @s Thrower set value [I;0,0,0,0]
data merge entity @s {PickupDelay:100000,Age:-32768}
item modify entity @s contents [{"function":"minecraft:set_custom_data","tag":"{NoDrop:1b}"}]
scoreboard players reset @s blasttime