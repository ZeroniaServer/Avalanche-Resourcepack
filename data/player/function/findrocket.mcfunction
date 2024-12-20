tag @s add KO
execute as @e[type=item] store success score @s blasttime on origin if entity @s[tag=KO]
execute as @e[type=item,scores={blasttime=1..}] if items entity @s contents snowball[custom_data~{Rocket:1b}] run function powerups:rocket/resetitem
execute as @e[type=item,scores={blasttime=1..}] if items entity @s contents ghast_spawn_egg[custom_data~{Sleigh:1b}] run function powerups:sleigh/resetitem
tag @s remove KO