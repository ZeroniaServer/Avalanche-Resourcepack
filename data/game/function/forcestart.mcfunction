scoreboard players set $gamestate CmdData 2

scoreboard players reset $Countdown CmdData
scoreboard players reset $CountSec CmdData

tag @a[team=Red] add SilentRespawn
tag @a[team=Green] add SilentRespawn

execute as @a[team=Red] run function player:respawn
execute as @a[team=Green] run function player:respawn

execute as @a at @s run playsound prepstart master @s ~ ~ ~ 1 1.2
execute as @a at @s run playsound prepstart2 master @s ~ ~ ~ 1 1.9

function bossbars:get_points

bossbar set bar_lobby players @a[team=Lobby]
bossbar set bar_lobby_hearts players @a[team=Lobby]
bossbar set bar_lobby value 0
bossbar set bar_lobby style notched_12
bossbar set bar_lobby name {"translate":"lobby.in_progress","color":"green"}

function game:start_prep

function lobby:readyteams/refreshsigns