execute as @e[type=item_display,tag=TeleportPole] at @s run particle portal ~ ~3.5 ~ 0.3 0.3 0.3 0.1 3 force

#> Trails between poles
execute as @e[type=item_display,tag=TeleportPole,tag=RedPole] at @s run particle trail{color:[1.000,0.000,0.000],target:[-42.0,52.0,-148.0]} ~ ~4 ~ 0.3 0.3 0.3 0.1 3 force @a[team=Lobby,distance=..10]
execute as @e[type=item_display,tag=TeleportPole,tag=GreenPole] at @s run particle trail{color:[0.000,1.000,0.000],target:[-80.0,56.0,-148.0]} ~ ~4 ~ 0.3 0.3 0.3 0.1 3 force @a[team=Lobby,distance=..10]
execute as @e[type=item_display,tag=TeleportPole,tag=SpectatePole] at @s run particle trail{color:[0.000,0.000,1.000],target:[-63.0,58.0,-153.0]} ~ ~4 ~ 0.3 0.3 0.3 0.1 3 force @a[team=Lobby,distance=..10]

execute as @e[type=item_display,tag=TeleportPole,tag=GreenRedPole] at @s run particle trail{color:[1.000,0.000,0.000],target:[-42.0,52.0,-151.5]} ~ ~4 ~ 0.3 0.3 0.3 0.1 3 force @a[team=Lobby,distance=..10]
execute as @e[type=item_display,tag=TeleportPole,tag=GreenLobbyPole] at @s run particle trail{color:[0.000,1.000,0.000],target:[-65.0,52.0,-128.0]} ~ ~4 ~ 0.3 0.3 0.3 0.1 3 force @a[team=Lobby,distance=..10]

execute as @e[type=item_display,tag=TeleportPole,tag=RedGreenPole] at @s run particle trail{color:[0.000,1.000,0.000],target:[-80.0,56.0,-151.5]} ~ ~4 ~ 0.3 0.3 0.3 0.1 3 force @a[team=Lobby,distance=..10]
execute as @e[type=item_display,tag=TeleportPole,tag=RedLobbyPole] at @s run particle trail{color:[1.000,0.000,0.000],target:[-61.0,52.0,-127.5]} ~ ~4 ~ 0.3 0.3 0.3 0.1 3 force @a[team=Lobby,distance=..10]