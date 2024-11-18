function game:placewall

function game:weakpoint/remove_all
title @a[team=!Lobby,team=!Spectator] title {"translate":"game.start.preparation.top","color":"dark_aqua","underlined": true}
title @a[team=!Lobby,team=!Spectator] subtitle {"translate":"game.start.preparation.bottom","color":"aqua"}

scoreboard players set $gamestate CmdData 2
function bossbars:get_points

#> TODO: Prep timer?
# bossbar add bar_prep [{"translate":"space.20"},{"translate":"space.-20"},{"text":"test"},{"translate":"space.-21"},{"translate":"space.20"}]
# bossbar set bar_prep color white

function game:calcbarricades