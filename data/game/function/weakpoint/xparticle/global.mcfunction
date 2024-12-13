execute if entity @s[tag=1,tag=!end] at @s run tp @s ~ ~0.2 ~-0.2
execute if entity @s[tag=2,tag=!end] at @s run tp @s ~ ~0.2 ~0.2
execute if entity @s[tag=1,tag=end] at @s run tp @s ~ ~-5 ~5
execute if entity @s[tag=2,tag=end] at @s run tp @s ~ ~-5 ~-5
tag @s[tag=end] remove end