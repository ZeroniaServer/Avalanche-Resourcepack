scoreboard players add @s[predicate=game:middle] fireworkCount 1

tag @s add self
execute summon marker run function powerups:rocket/spawnitem

scoreboard players set @s fireworkCount 0

execute as @e[type=item] if items entity @s contents snowball[custom_data~{Dropped:1b}] run function powerups:rocket/itemdata
tag @s remove self

clear @s snowball[custom_data~{Rocket:1b}]