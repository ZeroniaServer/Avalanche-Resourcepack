scoreboard players set $gamestate CmdData -1

scoreboard objectives setdisplay below_name
team modify Lobby nametagVisibility always

#> Cycle the Game ID, forcing rejoiners to automatically swap to the lobby team
function lobby:settings/gameidcycle

setblock -64 53 -93 crimson_wall_sign{front_text:{messages:['{"translate":"lobby.settings.confirm","color":"green","clickEvent":{"action":"run_command","value":"/trigger modify set 23401"}}','{"text":""}','{"text":""}','{"text":""}']}}
setblock -62 53 -93 crimson_wall_sign{front_text:{messages:['{"translate":"lobby.settings.reset","color":"red","clickEvent":{"action":"run_command","value":"/trigger modify set 298375"}}','{"text":""}','{"text":""}','{"text":""}']}}

scoreboard players set $GreenPoints CmdData 0
scoreboard players set $RedPoints CmdData 0

scoreboard objectives setdisplay below_name

function game:weakpoint/remove_all