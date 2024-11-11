scoreboard players add @e[type=arrow,tag=AvalancheRocket] lifetime 1
execute as @e[type=arrow,tag=AvalancheRocket,scores={lifetime=1}] on vehicle run data merge entity @s {NoGravity:1b}
execute as @e[type=arrow,tag=AvalancheRocket,scores={lifetime=12}] on vehicle run data merge entity @s {NoGravity:0b}
execute as @e[type=arrow,tag=AvalancheRocket,scores={lifetime=1}] at @s run playsound entity.firework_rocket.launch master @a ~ ~ ~ 1 0.8
execute as @e[type=arrow,tag=AvalancheRocket,scores={lifetime=1}] at @s run particle cloud ~ ~ ~ 0 0 0 0.1 5 force
execute as @e[type=arrow,tag=AvalancheRocket,scores={lifetime=1..}] at @s run particle firework ~ ~ ~ 0 0 0 0.02 1 force
execute as @e[type=arrow,tag=AvalancheRocket,tag=RocketGreen,scores={lifetime=1..}] at @s run particle dust{color:[0.000,1.000,0.000],scale:0.6} ~ ~ ~ 0 0 0 0 1 force
execute as @e[type=arrow,tag=AvalancheRocket,tag=RocketRed,scores={lifetime=1..}] at @s run particle dust{color:[1.000,0.000,0.000],scale:0.6} ~ ~ ~ 0 0 0 0 1 force

execute as @e[type=arrow,tag=AvalancheRocket,scores={lifetime=30..}] at @s run function powerups:rocket/explosion

#> Blasted players
execute as @e[type=area_effect_cloud,tag=BlastAEC] at @s run function powerups:rocket/blast/aec
execute as @e[type=slime,tag=BlastSlime] at @s run function powerups:rocket/blast/slime
scoreboard players add @a[tag=Blasted] blasttime 1
tag @a[tag=Blasted,scores={blasttime=6..}] remove Blasted
execute as @a[tag=!Blasted,scores={blasttime=1..}] run scoreboard players reset @s blasttime