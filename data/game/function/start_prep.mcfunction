function game:weakpoint/remove_all
title @a[team=!Lobby,team=!Spectator] title {translate:"game.start.preparation.top",color:"dark_aqua",underlined: true}
title @a[team=!Lobby,team=!Spectator] subtitle {translate:"game.start.preparation.bottom",color:"aqua"}

scoreboard players set $gamestate CmdData 2
scoreboard players operation $prepticks CmdData = $PrepSeconds CmdData
scoreboard players operation $prepticks CmdData *= $20 CmdData
function game:timer_prep

clear @a clay
clear @a stone_shovel
execute as @a unless entity @s[team=!Green,team=!Red] run loot replace entity @s hotbar.0 loot powerups:shovel
function game:calcbarricades

function game:placewall

fill -115 46 -209 -113 48 -211 moving_piston replace air
fill -112 46 -210 -111 48 -209 moving_piston replace air
fill -110 46 -209 -107 48 -208 moving_piston replace air
fill -16 46 -233 -19 48 -234 moving_piston replace air
fill -14 46 -232 -15 48 -233 moving_piston replace air
fill -11 46 -233 -13 48 -231 moving_piston replace air