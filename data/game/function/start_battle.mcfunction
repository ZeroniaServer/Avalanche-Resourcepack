function game:weakpoint/pick_green
function game:weakpoint/pick_red

function game:removewall
clear @a[team=!Lobby,team=!Spectator] clay
loot give @a[team=!Lobby,team=!Spectator] loot powerups:snowball
title @a[team=!Lobby,team=!Spectator] title {"translate":"game.start","color":"dark_aqua","underlined": true}
title @a[team=!Lobby,team=!Spectator] subtitle {"text":" "}

team modify Lobby nametagVisibility never
scoreboard objectives setdisplay below_name fireworkCount
scoreboard players set $gamestate CmdData 3
function bossbars:get_points

execute as @a[team=!Lobby,team=!Spectator] at @s run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1.6

scoreboard players set $ElfTimer CmdData 380