execute unless score $gamestate CmdData matches 0..1 run return fail

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

scoreboard players set $Tip CmdData 0
function game:tips/newset

execute as @a[team=Red] run function player:actionbar
execute as @a[team=Green] run function player:actionbar

tag @a remove KillMVP
tag @a remove DeathMVP
tag @a remove DamageMVP
tag @a remove RocketMVP

bossbar set bar_lobby players @a[team=Lobby]
bossbar set bar_lobby_hearts players @a[team=Lobby,gamemode=!spectator,gamemode=!creative]
bossbar set bar_lobby value 0
bossbar set bar_lobby style notched_12
bossbar set bar_lobby name {"translate":"lobby.in_progress","color":"green"}

function game:start_prep

function lobby:readyteams/refreshsigns