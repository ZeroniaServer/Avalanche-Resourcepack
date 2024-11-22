#> Detecting cases
execute unless items entity @s weapon.mainhand * run tag @s add emptyMainhand
execute if items entity @s weapon.mainhand ghast_spawn_egg[custom_data~{Campfire:1b}] run tag @s add stackMainhand
execute if items entity @s weapon.mainhand ghast_spawn_egg[custom_data~{Campfire:1b},count~{min:64}] run tag @s add fullStackMainhand

#> If mainhand is empty, replace with 1 campfire and use blank NBT to prevent animation
scoreboard players set @s[tag=emptyMainhand] spawnPlaceable 0
loot replace entity @s[tag=emptyMainhand] weapon.mainhand loot powerups:campfire
item modify entity @s[tag=emptyMainhand] weapon.mainhand powerups:blank

#> If mainhand has campfire (under a stack), give 2 more and then restore the original stack amount to prevent animation
scoreboard players reset @s hasCampfires
execute if entity @s[tag=stackMainhand,tag=!fullStackMainhand] store result score @s hasCampfires run data get entity @s SelectedItem.count
item modify entity @s[tag=stackMainhand,tag=!fullStackMainhand] weapon.mainhand powerups:add_two
scoreboard players add @s[tag=stackMainhand,tag=!fullStackMainhand] hasCampfires 1
loot replace entity @s[tag=stackMainhand,tag=!fullStackMainhand] weapon.mainhand loot powerups:campfire_return

#> If mainhand had a stack of campfires, replace with a full stack and use blank NBT to prevent animation
scoreboard players set @s[tag=fullStackMainhand] spawnPlaceable 0
loot replace entity @s[tag=fullStackMainhand] weapon.mainhand loot powerups:campfire_stack
item modify entity @s[tag=fullStackMainhand] weapon.mainhand powerups:blank

#> If all else fails, give a new campfire somewhere
execute if entity @s[tag=!emptyMainhand,tag=!stackMainhand] run loot give @s loot powerups:campfire

#> Reset
tag @s[tag=emptyMainhand] remove emptyMainhand
tag @s[tag=stackMainhand] remove stackMainhand
tag @s[tag=fullStackMainhand] remove fullStackMainhand
scoreboard players reset @s[scores={spawnPlaceable=0..}] spawnPlaceable