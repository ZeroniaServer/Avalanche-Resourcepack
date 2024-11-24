#> To Green
execute as @a[tag=WarpGreen] at @s run tp @s @s
execute as @a[tag=WarpGreen] at @s run tp @s -83 54 -150 -90 0
execute as @a[tag=WarpGreen] at @s run particle flash -82 55 -150 0 0 0 0 2 force @s
tag @a[tag=WarpGreen] remove WarpGreen

#> To Red
execute as @a[tag=WarpRed] at @s run tp @s @s
execute as @a[tag=WarpRed] at @s run tp @s -40 50 -150 90 0
execute as @a[tag=WarpRed] at @s run particle flash -40.5 51 -150 0 0 0 0 2 force @s
tag @a[tag=WarpRed] remove WarpRed

#> To Lobby
execute as @a[tag=WarpLobby] at @s run tp @s @s
execute as @a[tag=WarpLobby] at @s run tp @s -63 50 -123 -180 0
execute as @a[tag=WarpLobby] at @s run particle flash -63 51 -124 0 0 0 0 2 force @s
tag @a[tag=WarpLobby] remove WarpLobby

execute as @a[tag=LobbyWarp] at @s run playsound entity.player.teleport master @s ~ ~ ~ 0.6 1.1
execute as @a[tag=LobbyWarp] at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 0.4 2
tag @a[tag=LobbyWarp] remove LobbyWarp