execute unless items entity @s weapon.mainhand * run tag @s add emptyMainhand

#> If mainhand is empty, replace with 1 sleigh and use blank NBT to prevent animation
execute if entity @s[tag=emptyMainhand] run data modify storage avalanche:sleighdrop func set value "replace entity @s weapon.mainhand"
execute if entity @s[tag=emptyMainhand] run function powerups:sleigh/givehand with storage avalanche:sleighdrop
item modify entity @s[tag=emptyMainhand] weapon.mainhand powerups:blank

#> If all else fails, give a new sleigh somewhere
execute if entity @s[tag=!emptyMainhand] run data modify storage avalanche:sleighdrop func set value "give @s"
execute if entity @s[tag=!emptyMainhand] run loot give @s loot powerups:snowman

#> Reset
scoreboard players reset @s spawnPlaceable
tag @s[tag=emptyMainhand] remove emptyMainhand
data remove storage powerups:sleighdrop func