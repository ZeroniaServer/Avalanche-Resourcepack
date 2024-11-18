scoreboard players set $gamestate CmdData 2

scoreboard players reset $Countdown CmdData
scoreboard players reset $CountSec CmdData

tag @a[team=Red] add SilentRespawn
tag @a[team=Green] add SilentRespawn

execute as @a[team=Red] run function player:respawn
execute as @a[team=Green] run function player:respawn

execute as @a at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 1.2
execute as @a at @s run playsound block.note_block.chime master @s ~ ~ ~ 1 1.9

function bossbars:get_points

scoreboard objectives setdisplay below_name fireworkCount

function game:start_prep