#> To Green
execute as @a[tag=WarpGreen] at @s run tp @s @s
execute as @a[tag=WarpGreen] at @s run tp @s -85 54 -149
execute as @a[tag=WarpGreen] at @s run rotate @s 90 0
tag @a[tag=WarpGreen] remove WarpGreen

#> To Red
execute as @a[tag=WarpRed] at @s run tp @s @s
execute as @a[tag=WarpRed] at @s run tp @s -40 50 -150
execute as @a[tag=WarpRed] at @s run rotate @s -90 0
tag @a[tag=WarpRed] remove WarpRed

#> To Lobby
execute as @a[tag=WarpLobby] at @s run tp @s @s
execute as @a[tag=WarpLobby] at @s run tp @s -65 52 -111
execute as @a[tag=WarpLobby] at @s run rotate @s -180 0
tag @a[tag=WarpLobby] remove WarpLobby

execute as @a[tag=LobbyWarp] at @s run playsound entity.player.teleport master @s ~ ~ ~ 0.6 1.1
execute as @a[tag=LobbyWarp] at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 0.4 2
execute as @a[tag=LobbyWarp] at @s anchored eyes run particle flash ^ ^ ^0.5 0 0 0 0 1 force @s
tag @a[tag=LobbyWarp] remove LobbyWarp