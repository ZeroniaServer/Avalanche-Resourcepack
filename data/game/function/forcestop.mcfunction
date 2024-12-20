execute if score $mcancel CmdData matches 1 if entity @s[type=player] run tellraw @a {"translate":"lobby.customizer.editing","color":"#f089a8","with":[{"selector":"@s","color":"blue","bold":true}]}

fill -90 53 -148 -90 55 -150 minecraft:light_gray_stained_glass
fill -35 51 -150 -35 49 -152 light_gray_stained_glass

function game:removewall

execute as @a[team=!Lobby,team=!Spectator] run function player:leave

scoreboard players set $gamestate CmdData 0

scoreboard objectives setdisplay below_name
team modify Lobby nametagVisibility always

#> Cycle the Game ID, forcing rejoiners to automatically swap to the lobby team
function lobby:settings/gameidcycle

fill -56 53 -91 -56 54 -89 air
setblock -56 54 -91 cherry_wall_sign[facing=west]
setblock -56 54 -90 warped_wall_sign[facing=west]
setblock -56 54 -89 warped_wall_sign[facing=west]

setblock -56 53 -91 cherry_wall_sign[facing=west]
setblock -56 53 -89 warped_wall_sign[facing=west]

function lobby:settings/refreshsigns with storage lobby:customizer
schedule clear lobby:settings/cancel/counter

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
scoreboard players set $forcecountdown CmdData 0
scoreboard players set $RedReady CmdData 0
scoreboard players set $GreenReady CmdData 0
scoreboard players set $RedReadyFirst CmdData 0
scoreboard players set $GreenReadyFirst CmdData 0
function lobby:readyteams/refreshsigns

bossbar set bar_ready_g value 0
bossbar set bar_ready_r value 0
bossbar set bar_lobby style notched_6

scoreboard players set $red_progress CmdData 0
scoreboard players set $green_progress CmdData 0
scoreboard players set $RedPoints CmdData 0
scoreboard players set $GreenPoints CmdData 0
scoreboard players set $DamageRed CmdData 0
scoreboard players set $DamageGreen CmdData 0
scoreboard players reset $GreenRespawn CmdData
scoreboard players reset $RedRespawn CmdData

function arenaclear:reset
execute unless score $mcancel CmdData matches 1 run function lobby:settings/auto_confirm
execute if score $mcancel CmdData matches 1 run function lobby:settings/cancel/begin
scoreboard players reset $mcancel CmdData