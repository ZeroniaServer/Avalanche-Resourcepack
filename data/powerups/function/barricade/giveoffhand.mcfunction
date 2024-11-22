#> Detecting cases
execute unless items entity @s weapon.offhand * run tag @s add emptyOffhand
execute if items entity @s weapon.offhand clay run tag @s add stackOffhand
execute if items entity @s weapon.offhand clay[count~{min:64}] run tag @s add fullStackOffhand

#> If offhand is empty, replace with 1 barricade and use blank NBT to prevent animation
scoreboard players set @s[tag=emptyOffhand] placeBarricade 0
loot replace entity @s[tag=emptyOffhand] weapon.offhand loot powerups:barricade
item modify entity @s[tag=emptyOffhand] weapon.offhand powerups:blank

#> If offhand has barricade (under a stack), give 2 more and then restore the original stack amount to prevent animation
execute store result score @s hasBarricades run data get entity @s Inventory[{Slot:-106b}].count
item modify entity @s[tag=stackOffhand,tag=!fullStackOffhand] weapon.offhand powerups:add_one
loot replace entity @s[tag=stackOffhand,tag=!fullStackOffhand] weapon.offhand loot powerups:barricade_return

#> If offhand had a stack of barricades, replace with a full stack and use blank NBT to prevent animation
scoreboard players set @s[tag=fullStackOffhand] placeBarricade 0
loot replace entity @s[tag=fullStackOffhand] weapon.offhand loot powerups:barricade_stack
item modify entity @s[tag=fullStackOffhand] weapon.offhand powerups:blank

#> If all else fails, give a new barricade somewhere
execute if entity @s[tag=!emptyOffhand,tag=!stackOffhand] run loot give @s loot powerups:barricade

#> Reset
tag @s[tag=emptyOffhand] remove emptyOffhand
tag @s[tag=stackOffhand] remove stackOffhand
tag @s[tag=fullStackOffhand] remove fullStackOffhand
scoreboard players reset @s[scores={placeBarricade=0..}] placeBarricade
setblock ~ ~ ~ air