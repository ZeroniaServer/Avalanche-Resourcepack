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

#> Rocket items void
scoreboard players add @e[type=item,tag=RocketItem,tag=Voided] CmdData 1
execute as @e[type=item,tag=RocketItem,predicate=game:void] at @s run tag @s add Voided
execute as @e[type=item,tag=RocketItem,tag=Voided,scores={CmdData=1}] run data merge entity @s {Motion:[0.0d,4.4d,0.0d]}
execute as @e[type=item,tag=RocketItem,tag=Voided,scores={CmdData=10..23}] at @s unless block ~ ~1 ~ air run tp @s ~ ~3.5 ~
execute as @e[type=item,tag=RocketItem,tag=Voided,scores={CmdData=20}] run data merge entity @s {Motion:[0.0d,-0.05d,0.0d]}
execute as @e[type=item,tag=RocketItem,tag=Voided,scores={CmdData=..20}] at @s run particle firework ~ ~ ~ 0 0 0 .02 1 force
execute as @e[type=item,tag=RocketItem,tag=Voided,scores={CmdData=20}] at @s run particle firework ~ ~ ~ 0 0 0 .2 6 force
execute as @e[type=item,tag=RocketItem,tag=Voided,scores={CmdData=20}] at @s run playsound entity.firework_rocket.twinkle master @a ~ ~ ~ 0.3 2

#> Weakpoint rocket font timers
execute if score $weakpointgreen CmdData matches 1.. run scoreboard players add $weakpointgreen CmdData 1
execute if score $weakpointgreen CmdData matches 15.. run scoreboard players reset $weakpointgreen CmdData
execute if score $weakpointred CmdData matches 1.. run scoreboard players add $weakpointred CmdData 1
execute if score $weakpointred CmdData matches 15.. run scoreboard players reset $weakpointred CmdData