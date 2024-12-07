tag @s remove damaged
scoreboard players reset @s UUIDscore

execute if items entity @s contents nautilus_shell[item_model="minecraft:barricade/cracks_2"] run setblock ~ ~ ~ air destroy
execute if items entity @s contents nautilus_shell[item_model="minecraft:barricade/cracks_2"] run return run kill

execute if items entity @s contents nautilus_shell[item_model="minecraft:barricade/cracks_1"] run setblock ~ ~ ~ air
execute if items entity @s contents nautilus_shell[item_model="minecraft:barricade/cracks_1"] run setblock ~ ~ ~ target[power=0] replace
execute if items entity @s contents nautilus_shell[item_model="minecraft:barricade/cracks_1"] run return run item replace entity @s contents with nautilus_shell[item_model="minecraft:barricade/cracks_2"]

execute unless items entity @s contents * run setblock ~ ~ ~ air
execute unless items entity @s contents * run setblock ~ ~ ~ target[power=0] replace
execute unless items entity @s contents * run return run item replace entity @s contents with nautilus_shell[item_model="minecraft:barricade/cracks_1"]