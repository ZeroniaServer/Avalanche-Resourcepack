execute as @a[team=!Lobby,gamemode=!spectator,gamemode=!creative] run function player:actionbar
execute as @a[scores={playerDamage=1..}] if score @s respawn matches 1.. run scoreboard players reset @s playerDamage
execute as @a[scores={playerDamage=1..}] unless score @s respawn matches 1.. run function player:dealdamage

#> TODO: This is extremely lazy
execute as @a[gamemode=!adventure] run title @s actionbar " "

#> Spawn immunity
scoreboard players add @a[scores={respawn=1..}] respawn 1
scoreboard players reset @a[scores={respawn=60..}] respawn