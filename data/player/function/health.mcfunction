execute as @a[team=!Lobby,gamemode=!spectator,gamemode=!creative] run function player:actionbar
execute as @a[team=!Lobby,gamemode=spectator] run title @s actionbar ""
execute as @a[team=!Lobby,gamemode=creative] run title @s actionbar ""

execute as @a[scores={playerDamage=1..}] if score @s respawn matches 1.. run scoreboard players reset @s playerDamage
execute as @a[scores={playerDamage=1..}] unless score @s respawn matches 1.. run function player:dealdamage

#> Spawn immunity
scoreboard players add @a[scores={respawn=1..}] respawn 1
scoreboard players reset @a[scores={respawn=60..}] respawn