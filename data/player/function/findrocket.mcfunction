tag @s add KO
execute as @e[type=item] store success score @s blasttime on origin if entity @s[tag=KO]
execute as @e[type=item,scores={blasttime=1..}] run function powerups:rocket/resetitem
tag @s remove KO