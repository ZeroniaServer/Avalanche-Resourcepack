execute as @a[team=!Lobby,gamemode=!spectator,gamemode=!creative] run function player:actionbar
execute as @a[scores={playerDamage=1..}] run function player:dealdamage

#> TODO: This is extremely lazy
execute as @a[gamemode=!adventure,gamemode=!survival] run title @s actionbar ""