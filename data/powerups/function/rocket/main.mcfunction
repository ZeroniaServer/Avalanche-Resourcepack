#> Rocket arrows
execute as @e[type=arrow,tag=AvalancheRocket] at @s run function powerups:rocket/arrow

#> Blasted players
execute as @e[type=area_effect_cloud,tag=BlastAEC] at @s run function powerups:rocket/blast/aec
execute as @e[type=slime,tag=BlastSlime] at @s run function powerups:rocket/blast/slime
scoreboard players add @a[tag=Blasted] blasttime 1
tag @a[tag=Blasted,scores={blasttime=6..}] remove Blasted
execute as @a[tag=!Blasted,scores={blasttime=1..}] run scoreboard players reset @s blasttime

#> Rocket items
execute as @e[type=item,tag=RocketItem] at @s run function powerups:rocket/item
tag @a remove giveRocket