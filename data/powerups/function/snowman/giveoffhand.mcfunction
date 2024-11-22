#> Detecting cases
execute unless items entity @s weapon.offhand * run tag @s add emptyOffhand
execute if items entity @s weapon.offhand ghast_spawn_egg[custom_data~{Snowman:1b}] run tag @s add stackOffhand
execute if items entity @s weapon.offhand ghast_spawn_egg[custom_data~{Snowman:1b},count~{min:64}] run tag @s add fullStackOffhand

#> If offhand is empty, replace with 1 snowman and use blank NBT to prevent animation
scoreboard players set @s[tag=emptyOffhand] spawnPlaceable 0
loot replace entity @s[tag=emptyOffhand] weapon.offhand loot powerups:snowman
item modify entity @s[tag=emptyOffhand] weapon.offhand powerups:blank

#> If offhand has snowman (under a stack), give 2 more and then restore the original stack amount to prevent animation
execute store result score @s hasSnowmen run data get entity @s Inventory[{Slot:-106b}].count
item modify entity @s[tag=stackOffhand,tag=!fullStackOffhand] weapon.offhand powerups:add_two
scoreboard players add @s[tag=stackOffhand,tag=!fullStackOffhand] hasSnowmen 1
loot replace entity @s[tag=stackOffhand,tag=!fullStackOffhand] weapon.offhand loot powerups:snowman_return

#> If offhand had a stack of snowmans, replace with a full stack and use blank NBT to prevent animation
scoreboard players set @s[tag=fullStackOffhand] spawnPlaceable 0
loot replace entity @s[tag=fullStackOffhand] weapon.offhand loot powerups:snowman_stack
item modify entity @s[tag=fullStackOffhand] weapon.offhand powerups:blank

#> If all else fails, give a new snowman somewhere
execute if entity @s[tag=!emptyOffhand,tag=!stackOffhand] run loot give @s loot powerups:snowman

#> Reset
tag @s[tag=emptyOffhand] remove emptyOffhand
tag @s[tag=stackOffhand] remove stackOffhand
tag @s[tag=fullStackOffhand] remove fullStackOffhand
scoreboard players reset @s[scores={spawnPlaceable=0..}] spawnPlaceable