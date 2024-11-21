execute as @e[type=item_display,tag=barricade] at @s positioned ~ ~100 ~ run function powerups:barricade/tick

execute as @a[team=!Lobby,team=!Spectator] run tag @s remove survival
execute as @a[team=!Lobby,team=!Spectator] unless items entity @s weapon.mainhand * run function powerups:barricade/raycast
execute as @a[team=!Lobby,team=!Spectator,tag=survival,gamemode=adventure] run gamemode survival
execute as @a[team=!Lobby,team=!Spectator,tag=!survival,gamemode=survival] run gamemode adventure