#> Rocket arrows
execute as @e[type=arrow,tag=AvalancheRocket] at @s run function powerups:rocket/arrow

#> Blasted players
execute as @e[type=slime,tag=BlastSlime] at @s run function powerups:rocket/blast/slime
scoreboard players add @a[tag=Blasted] blasttime 1
effect clear @a[tag=Blasted,scores={blasttime=2..}] levitation
tag @a[tag=Blasted,scores={blasttime=6..}] remove Blasted
execute as @a[tag=!Blasted,scores={blasttime=1..}] run scoreboard players reset @s blasttime

#> Rocket items
execute as @e[type=item,tag=RocketItem] at @s run function powerups:rocket/item
tag @a remove giveRocket

#> Weakpoint rocket font timers
execute if score $weakpointgreen CmdData matches 1.. run scoreboard players add $weakpointgreen CmdData 1
execute if score $weakpointgreen CmdData matches 15.. run scoreboard players reset $weakpointgreen CmdData
execute if score $weakpointred CmdData matches 1.. run scoreboard players add $weakpointred CmdData 1
execute if score $weakpointred CmdData matches 15.. run scoreboard players reset $weakpointred CmdData

#> Rocket item displays
kill @e[type=item_display,tag=rocketdisplay,predicate=!wasd:is_mounted]