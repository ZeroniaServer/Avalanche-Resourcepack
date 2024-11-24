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

#> Spectate
execute as @a[tag=WarpSpectate] run tellraw @a {"translate":"lobby.joined_spectator","color":"dark_aqua","with":[{"selector":"@s","color":"blue"}]}
execute as @a[tag=WarpSpectate] at @s run gamemode spectator @s
execute as @a[tag=WarpSpectate] at @s run team join Spectator @s
execute as @a[tag=WarpSpectate] at @s run tp @s @s
execute as @a[tag=WarpSpectate] at @s run tp @s -63 100 -221 0 90
execute as @a[tag=WarpSpectate] at @s run playsound block.beehive.enter master @s ~ ~ ~ 1 1
tag @a[tag=WarpSpectate] remove WarpSpectate

execute positioned -63 95 -221 run tag @a[team=Spectator,distance=..3] add LeaveTeam

particle dust{color:[0.000,0.500,1.000],scale:2} -63 95 -221 1 1 1 0.1 10 force @a[team=Spectator]
title @a[team=Spectator] actionbar {"translate":"lobby.leave_spectator","color":"aqua"}