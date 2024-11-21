#> Detecting cases
execute unless items entity @s weapon.mainhand * run tag @s add emptyMainhand
execute if items entity @s weapon.mainhand clay run tag @s add stackMainhand
execute if items entity @s weapon.mainhand clay[count~{min:64}] run tag @s add fullStackMainhand

#> If mainhand is empty, replace with 1 barricade and use blank NBT to prevent animation
scoreboard players set @s[tag=emptyMainhand] placeBarricade 0
loot replace entity @s[tag=emptyMainhand] weapon.mainhand loot powerups:barricade
item modify entity @s[tag=emptyMainhand] weapon.mainhand powerups:blank

#> If mainhand has barricade (under a stack), give 2 more and then restore the original stack amount to prevent animation
scoreboard players reset @s hasBarricades
execute if entity @s[tag=stackMainhand,tag=!fullStackMainhand] store result score @s hasBarricades run data get entity @s SelectedItem.count
item modify entity @s[tag=stackMainhand,tag=!fullStackMainhand] weapon.mainhand powerups:add_one
loot replace entity @s[tag=stackMainhand,tag=!fullStackMainhand] weapon.mainhand loot powerups:barricade_return

#> If mainhand had a stack of barricades, replace with a full stack and use blank NBT to prevent animation
scoreboard players set @s[tag=fullStackMainhand] placeBarricade 0
loot replace entity @s[tag=fullStackMainhand] weapon.mainhand loot powerups:barricade_stack
item modify entity @s[tag=fullStackMainhand] weapon.mainhand powerups:blank

#> If all else fails, give a new barricade somewhere
execute if entity @s[tag=!emptyMainhand,tag=!stackMainhand] run loot give @s loot powerups:barricade

#> Reset
tag @s[tag=emptyMainhand] remove emptyMainhand
tag @s[tag=stackMainhand] remove stackMainhand
tag @s[tag=fullStackMainhand] remove fullStackMainhand
scoreboard players reset @s[scores={placeBarricade=0..}] placeBarricade
setblock ~ ~ ~ air