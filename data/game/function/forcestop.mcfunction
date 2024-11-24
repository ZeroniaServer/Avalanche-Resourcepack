fill -90 53 -148 -90 55 -150 minecraft:light_gray_stained_glass
fill -35 51 -149 -35 49 -151 light_gray_stained_glass

function game:removewall
scoreboard players set $gamestate CmdData -1

scoreboard objectives setdisplay below_name
team modify Lobby nametagVisibility always

#> Cycle the Game ID, forcing rejoiners to automatically swap to the lobby team
function lobby:settings/gameidcycle

fill -62 53 -93 -64 54 -93 air
setblock -62 54 -93 mangrove_wall_sign
setblock -63 54 -93 mangrove_wall_sign
setblock -64 54 -93 mangrove_wall_sign

setblock -64 53 -93 mangrove_wall_sign
setblock -62 53 -93 mangrove_wall_sign

function lobby:settings/refreshsigns with storage lobby:customizer


scoreboard players set $GreenPoints CmdData 0
scoreboard players set $RedPoints CmdData 0

scoreboard objectives setdisplay below_name

function game:weakpoint/remove_all
function powerups:barricade/clearall

scoreboard players set $End CmdData 0
scoreboard players set $Winner CmdData 0
scoreboard players reset $ElfTimer CmdData

scoreboard players reset $precountdown CmdData
scoreboard players reset $Countdown CmdData
scoreboard players reset $CountSec CmdData
scoreboard players set $RedReady CmdData 0
scoreboard players set $GreenReady CmdData 0
scoreboard players set $RedReadyFirst CmdData 0
scoreboard players set $GreenReadyFirst CmdData 0
bossbar set bar_ready_g value 0
bossbar set bar_ready_r value 0
bossbar set bar_lobby style notched_6
bossbar set bar_lobby name {"translate":"chat.confirm","color":"dark_purple","with":[{"translate":"chat.settings_box","color":"light_purple","bold":true}]}

function arenaclear:reset