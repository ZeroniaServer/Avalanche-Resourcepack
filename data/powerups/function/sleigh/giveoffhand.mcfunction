execute unless items entity @s weapon.offhand * run tag @s add emptyOffhand

#> If offhand is empty, replace with 1 sleigh and use blank NBT to prevent animation
execute if entity @s[tag=emptyOffhand] run data modify storage avalanche:sleighdrop func set value "replace entity @s weapon.offhand"
execute if entity @s[tag=emptyOffhand] run function powerups:sleigh/givehand with storage avalanche:sleighdrop
item modify entity @s[tag=emptyOffhand] weapon.offhand powerups:blank

#> If all else fails, give a new sleigh somewhere
execute if entity @s[tag=!emptyOffhand] run data modify storage avalanche:sleighdrop func set value "give @s"
execute if entity @s[tag=!emptyOffhand] run loot give @s loot powerups:snowman

#> Reset
scoreboard players reset @s spawnPlaceable
tag @s[tag=emptyOffhand] remove emptyOffhand
data remove storage powerups:sleighdrop func