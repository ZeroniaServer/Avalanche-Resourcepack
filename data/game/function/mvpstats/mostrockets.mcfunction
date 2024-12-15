scoreboard players set $max MVProcket 0
scoreboard players operation $max MVProcket > @a[tag=DamageMVP] MVProcket
execute as @a[tag=DamageMVP] if score @s MVProcket = $max MVProcket unless score @s MVProcket matches 0 run tag @s add RocketMVP
scoreboard players reset $max MVProcket
tag @a[tag=DamageMVP] remove DamageMVP