function game:weakpoint/pick_green
function game:weakpoint/pick_red

function game:removewall
clear @a[team=!Lobby,team=!Spectator] #game:prep_items
execute as @e[type=item] if items entity @s contents #game:prep_items run kill
loot give @a[team=!Lobby,team=!Spectator] loot powerups:snowball
title @a[team=!Lobby,team=!Spectator] title {translate:"game.start.combat.top",color:"dark_aqua",underlined: true}
title @a[team=!Lobby,team=!Spectator] subtitle {translate:"game.start.combat.bottom",color:"aqua"}

team modify Lobby nametagVisibility never
scoreboard objectives setdisplay below_name fireworkCount
scoreboard players set $gamestate CmdData 3
function bossbars:get_points

execute as @a[team=!Lobby,team=!Spectator] at @s run playsound battlestart master @s ~ ~ ~ 1 1.6

scoreboard players set $ElfTimer CmdData 380