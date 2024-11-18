function game:removewall
clear @a[team=!Lobby,team=!Spectator] clay
loot give @a[team=!Lobby,team=!Spectator] loot powerups:snowball
title @a[team=!Lobby,team=!Spectator] title {"translate":"game.start","color":"dark_aqua","underlined": true}
title @a[team=!Lobby,team=!Spectator] subtitle {"text":" "}

scoreboard players set $gamestate CmdData 3
function bossbars:get_points

execute as @a[team=!Lobby,team=!Spectator] at @s run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1.6