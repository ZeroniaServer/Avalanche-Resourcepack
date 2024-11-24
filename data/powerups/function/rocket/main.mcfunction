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

#> Particles
execute as @e[type=item,tag=RocketItemGreen,tag=!RocketItemRed] at @s run particle dust{color:[0.000,1.000,0.000],scale:1} ~ ~ ~ 0.1 0.2 0.1 0.1 2 force @a[team=!Red]
execute as @e[type=item,tag=RocketItemRed,tag=!RocketItemGreen] at @s run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~ ~ 0.1 0.2 0.1 0.1 2 force @a[team=!Green]

execute as @e[type=item,tag=RocketItem,tag=!RocketItemGreen,tag=!RocketItemRed] at @s run particle dust_color_transition{from_color:[1.000,0.000,0.000],to_color:[0.000,1.000,0.000],scale:1} ~ ~0.5 ~ 0.1 0.2 0.1 0.1 1 force

#> Weakpoint rocket font timers
execute if score $weakpointgreen CmdData matches 1.. run scoreboard players add $weakpointgreen CmdData 1
execute if score $weakpointgreen CmdData matches 15.. run scoreboard players reset $weakpointgreen CmdData
execute if score $weakpointred CmdData matches 1.. run scoreboard players add $weakpointred CmdData 1
execute if score $weakpointred CmdData matches 15.. run scoreboard players reset $weakpointred CmdData